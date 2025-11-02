import '../../../../core/apis/api_result.dart';
import '../../../../core/helpers/cache_helper_keys.dart';
import '../../../../core/utils/app_logger.dart';
import '../../../../core/apis/api_error_handler.dart';
import '../../../../core/helpers/cache_helper.dart';
import '../models/login_request_body.dart';
import '../models/login_response.dart';
import '../services/auth_service.dart';

class LoginRepo {
  final AuthService _authService;

  LoginRepo(this._authService);

  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _authService.login(loginRequestBody);
      await CacheHelper.setSecureData(
        key: CacheHelperKeys.accessToken,
        value: response.accessToken,
      );
      await CacheHelper.setSecureData(
        key: CacheHelperKeys.refreshToken,
        value: response.refreshToken,
      );
      AppLogger.success('Login Repo Succeeded To Handle The Response');
      return ApiResult.success(response);
    } catch (error) {
      AppLogger.error('Login Repo Failed To Handle The Response');
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
