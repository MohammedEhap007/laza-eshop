import 'package:dio/dio.dart';
import 'package:laza_eshop/core/di/dependency_injection.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../features/auth/data/services/auth_service.dart';
import 'refresh_token_interceptor.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
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
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
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
