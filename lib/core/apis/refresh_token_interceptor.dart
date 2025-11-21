import 'dart:async';

import 'package:dio/dio.dart';

import '../../features/auth/data/models/refresh_token_request_body.dart';
import '../../features/auth/data/models/refresh_token_response.dart';
import '../../features/auth/data/services/auth_service.dart';
import '../helpers/cache_helper.dart';
import '../helpers/cache_helper_keys.dart';
import '../utils/app_logger.dart';
import 'api_constants.dart';

/// Interceptor that automatically handles token refresh when receiving 401 errors.
///
/// Flow:
/// 1. Before each request: Adds Authorization header with access token (onRequest)
/// 2. If 401 error occurs: Attempts to refresh the token (onError)
/// 3. If refresh succeeds: Retries the original request with new token
/// 4. If refresh fails: Clears tokens and forces user to login again
///
/// Handles concurrent 401 errors by using a Completer pattern:
/// - First 401 starts the refresh process
/// - Subsequent 401s wait for the first refresh to complete
/// - All waiting requests retry once new token is available
class RefreshTokenInterceptor extends Interceptor {
  final AuthService authService;
  final Dio dio;

  // Flag to track if a refresh is currently in progress
  bool _isRefreshing = false;

  // Completer used to coordinate multiple simultaneous 401 errors
  // It acts as a "promise" that will be fulfilled when refresh completes
  Completer<String>? _refreshCompleter;

  RefreshTokenInterceptor(this.authService, this.dio);
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Only handle 401 Unauthorized errors (token expired/invalid)
    if (err.response?.statusCode == 401) {
      AppLogger.warning('Received 401 Unauthorized - Attempting token refresh');

      // Step 1: Get the stored refresh token from secure storage
      final storedRefreshToken = await CacheHelper.getSecureData(
        key: CacheHelperKeys.refreshToken,
      );

      // If no refresh token exists, user must login again
      if (storedRefreshToken == null || storedRefreshToken.isEmpty) {
        AppLogger.error('No refresh token available - User needs to login');
        return handler.next(err);
      }

      // Step 2: Check if another request is already refreshing the token
      // If yes, wait for it to complete instead of starting a new refresh
      if (_isRefreshing && _refreshCompleter != null) {
        try {
          // Wait for the ongoing refresh to complete and get the new token
          final newAccessToken = await _refreshCompleter!.future;

          // Retry this request with the new token
          final options = err.requestOptions;
          options.headers['Authorization'] = 'Bearer $newAccessToken';
          final response = await dio.fetch(options);

          // Return the successful response
          return handler.resolve(response);
        } catch (e) {
          // If the refresh failed, pass the original error through
          return handler.next(err);
        }
      }

      // Step 3: This is the first 401 error, so start the refresh process
      _isRefreshing = true;
      _refreshCompleter =
          Completer<String>(); // Create a promise for waiting requests

      try {
        // Step 4: Call the refresh token API endpoint
        final refreshResponse = await authService.refreshToken(
          RefreshTokenRequestBody(refreshToken: storedRefreshToken),
        );

        // Step 5: Save the new tokens to secure storage
        await CacheHelper.setSecureData(
          key: CacheHelperKeys.accessToken,
          value: refreshResponse.accessToken,
        );
        await CacheHelper.setSecureData(
          key: CacheHelperKeys.refreshToken,
          value: refreshResponse.refreshToken,
        );

        AppLogger.success('Token refresh successful');

        // Step 6: Fulfill the promise so all waiting requests can proceed
        _refreshCompleter?.complete(refreshResponse.accessToken);

        // Step 7: Retry the original failed request with the new token
        final options = err.requestOptions;
        options.headers['Authorization'] =
            'Bearer ${refreshResponse.accessToken}';

        final retriedResponse = await dio.fetch(options);

        // Reset the refresh state
        _isRefreshing = false;
        _refreshCompleter = null;

        // Return the successful retry response
        return handler.resolve(retriedResponse);
      } catch (refreshError) {
        AppLogger.error('Token refresh failed: ${refreshError.toString()}');

        // Notify all waiting requests that the refresh failed
        if (!(_refreshCompleter?.isCompleted ?? true)) {
          _refreshCompleter?.completeError(refreshError);
        }

        // Reset the refresh state
        _isRefreshing = false;
        _refreshCompleter = null;

        // Step 8: Refresh failed - clear all tokens and force re-login
        await CacheHelper.deleteSecureData(key: CacheHelperKeys.accessToken);
        await CacheHelper.deleteSecureData(key: CacheHelperKeys.refreshToken);
        await CacheHelper.setData(key: CacheHelperKeys.login, value: false);

        // Pass the error through
        return handler.next(err);
      }
    }

    // Not a 401 error, pass it through
    return handler.next(err);
  }

  /// Called before every request to add the Authorization header
  ///
  /// Automatically retrieves the access token from secure storage and
  /// adds it to the request headers (except for auth endpoints)
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Check if this is an authentication endpoint
    final isAuthEndpoint = _isAuthEndpoint(options.path);

    // Only add Authorization header for non-auth endpoints
    if (!isAuthEndpoint) {
      final accessToken = await CacheHelper.getSecureData(
        key: CacheHelperKeys.accessToken,
      );

      if (accessToken != null && accessToken.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $accessToken';
        AppLogger.info('Added Authorization header to request');
      }
    }

    // Continue with the request
    return handler.next(options);
  }

  /// Helper method to check if a path is an authentication endpoint
  ///
  /// Auth endpoints don't need Authorization headers because:
  /// - Login/Signup: User doesn't have a token yet
  /// - Refresh: Uses refresh token in body, not Authorization header
  /// - Verify Email: Part of the registration flow
  bool _isAuthEndpoint(String path) {
    final authPaths = [
      ApiConstants.login,
      ApiConstants.signup,
      ApiConstants.refreshToken,
      ApiConstants.verifyEmail,
    ];
    return authPaths.any((authPath) => path.contains(authPath));
  }
}
