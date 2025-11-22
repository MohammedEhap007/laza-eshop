import 'package:laza_eshop/core/apis/api_result.dart';
import 'package:laza_eshop/features/auth/data/models/resend_otp_response.dart';

import '../../../../core/apis/api_error_handler.dart';
import '../../../../core/utils/app_logger.dart';
import '../models/resend_otp_request_body.dart';
import '../services/auth_service.dart';

class ResendOtpRepo {
  final AuthService _authService;

  ResendOtpRepo(this._authService);

  Future<ApiResult<ResendOtpResponse>> resendOtp(
    ResendOtpRequestBody resendOtpRequestBody,
  ) async {
    try {
      final response = await _authService.resendOtp(resendOtpRequestBody);
      AppLogger.success('Resend OTP Repo Succeeded To Handle The Response');
      // Convert the plain string response to ResendOtpResponse object
      final resendOtpResponse = ResendOtpResponse(
        message: response.replaceAll(r'"', ''),
      );
      return ApiResult.success(resendOtpResponse);
    } catch (error) {
      AppLogger.error('Resend OTP Repo Failed To Handle The Response');
      AppLogger.info('Error details: $error');
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
