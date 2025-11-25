import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../features/auth/data/services/auth_service.dart';
import '../di/dependency_injection.dart';
import 'refresh_token_interceptor.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    if (dio == null) {
      getDioWithoutInterceptors();
      addDioInterceptor();
    }
    return dio!;
  }

  static Dio getDioWithoutInterceptors() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut
        ..options.responseType = ResponseType.json
        ..options.headers = {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        };
    }
    return dio!;
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(RefreshTokenInterceptor(getIt<AuthService>(), dio!));
    dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        responseHeader: true,
        requestBody: true,
      ),
    );
  }
}
