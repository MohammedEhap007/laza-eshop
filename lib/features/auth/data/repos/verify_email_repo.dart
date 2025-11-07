import 'package:laza_eshop/core/apis/api_result.dart';
import 'package:laza_eshop/core/utils/app_logger.dart';
import 'package:laza_eshop/features/auth/data/models/verify_email_response.dart';
import 'package:laza_eshop/features/auth/data/services/auth_service.dart';

import '../../../../core/apis/api_error_handler.dart';
import '../models/verify_email_request_body.dart';

class VerifyEmailRepo {
  final AuthService _authService;

  VerifyEmailRepo(this._authService);

  Future<ApiResult<VerifyEmailResponse>> verifyEmail(
    VerifyEmailRequestBody verifyEmailRequestBody,
  ) async {
    try {
      final response = await _authService.verifyEmail(verifyEmailRequestBody);
      AppLogger.success('Verify Email Repo Succeeded To Handle The Response');
      // Convert the plain string response to VerifyEmailResponse object
      final verifyEmailResponse = VerifyEmailResponse(
        message: response.replaceAll(r'"', ''),
      );
      return ApiResult.success(verifyEmailResponse);
    } catch (error) {
      AppLogger.error('Verify Email Repo Failed To Handle The Response');
      AppLogger.error('Error details: $error');
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
