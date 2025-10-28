import 'package:dio/dio.dart';
import 'package:laza_eshop/core/apis/api_constants.dart';
import 'package:laza_eshop/features/auth/data/models/login_request_body.dart';
import 'package:laza_eshop/features/auth/data/models/login_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'auth_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
}
