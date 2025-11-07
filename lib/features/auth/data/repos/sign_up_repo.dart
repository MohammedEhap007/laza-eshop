import 'package:laza_eshop/features/auth/data/services/auth_service.dart';

import '../../../../core/apis/api_error_handler.dart';
import '../../../../core/apis/api_result.dart';
import '../../../../core/utils/app_logger.dart';
import '../models/sign_up_request_body.dart';
import '../models/sign_up_response.dart';

class SignUpRepo {
  final AuthService _authService;

  SignUpRepo(this._authService);
  Future<ApiResult<SignUpResponse>> signUp(
    SignUpRequestBody signUpRequestBody,
  ) async {
    try {
      final response = await _authService.signUp(signUpRequestBody);
      AppLogger.success('SignUp Repo Succeeded To Handle The Response');
      return ApiResult.success(response);
    } catch (error) {
      AppLogger.error('SignUp Repo Failed To Handle The Response');
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
