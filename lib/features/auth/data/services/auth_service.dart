import 'package:dio/dio.dart';
import 'package:laza_eshop/features/auth/data/models/sign_up_response.dart';
import 'package:laza_eshop/features/auth/data/models/verify_email_request_body.dart';
import 'package:laza_eshop/features/auth/data/models/verify_email_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/apis/api_constants.dart';
import '../models/login_request_body.dart';
import '../models/login_response.dart';
import '../models/sign_up_request_body.dart';

part 'auth_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.signup)
  Future<SignUpResponse> signUp(@Body() SignUpRequestBody signUpRequestBody);

  @POST(ApiConstants.verifyEmail)
  Future<String> verifyEmail(
    @Body() VerifyEmailRequestBody verifyEmailRequestBody,
  );
}
