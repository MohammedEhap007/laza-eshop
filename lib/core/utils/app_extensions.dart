import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../apis/api_error_model.dart';

extension BuildContextExtension on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(
      this,
    ).pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
    required RoutePredicate predicate,
  }) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();

  bool isDarkMode() {
    return Theme.of(this).brightness == Brightness.dark;
  }
}

extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}

extension DioExceptionTypeExtension on DioException {
  ApiErrorModel when({
    required ApiErrorModel Function() connectionError,
    required ApiErrorModel Function() connectionTimeout,
    required ApiErrorModel Function() sendTimeout,
    required ApiErrorModel Function() receiveTimeout,
    required ApiErrorModel Function() badCertificate,
    required ApiErrorModel Function() badResponse,
    required ApiErrorModel Function() cancel,
    required ApiErrorModel Function() unknown,
  }) {
    switch (type) {
      case DioExceptionType.connectionError:
        return connectionError();
      case DioExceptionType.connectionTimeout:
        return connectionTimeout();
      case DioExceptionType.sendTimeout:
        return sendTimeout();
      case DioExceptionType.receiveTimeout:
        return receiveTimeout();
      case DioExceptionType.badCertificate:
        return badCertificate();
      case DioExceptionType.badResponse:
        return badResponse();
      case DioExceptionType.cancel:
        return cancel();
      default:
        return unknown();
    }
  }
}
