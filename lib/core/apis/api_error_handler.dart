import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:laza_eshop/core/utils/app_extensions.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic e) {
    if (e is Exception) {
      if (e is DioException) {
        return e.when(
          connectionError: () => ApiErrorModel(
            message:
                "No internet connection. Please check your Wi-Fi or mobile data.",
            errors: ["Connection Error"],
            icon: Icons.wifi_off_outlined,
            statusCode: e.response?.statusCode,
          ),
          connectionTimeout: () => ApiErrorModel(
            message:
                "The connection took too long. Try checking your internet or try again later.",
            icon: Icons.timer_off_outlined,
            statusCode: e.response?.statusCode,
            errors: ["Connection Timeout"],
          ),
          sendTimeout: () => ApiErrorModel(
            message: "Request timed out while sending data. Please try again.",
            icon: Icons.send_outlined,
            statusCode: e.response?.statusCode,
            errors: ["Send Timeout"],
          ),
          receiveTimeout: () => ApiErrorModel(
            message: "Server took too long to respond. Please try again later.",
            icon: Icons.downloading_outlined,
            statusCode: e.response?.statusCode,
            errors: ["Receive Timeout"],
          ),
          badCertificate: () => ApiErrorModel(
            message:
                "Security issue detected with the server. Connection not secure.",
            icon: Icons.security_outlined,
            statusCode: e.response?.statusCode,
            errors: ["Bad Certificate"],
          ),
          badResponse: () {
            final allErrors =
                e.response?.data["errors"] as Map<String, dynamic>?;
            final errorsList = <String>[];
            if (allErrors != null) {
              allErrors.forEach((key, value) {
                for (var error in (value as List)) {
                  final String singleErrorMessage = "$key: $error";
                  errorsList.add(singleErrorMessage);
                }
              });
            }
            return ApiErrorModel(
              statusCode: e.response?.statusCode,
              message: e.response?.data["message"],
              errors: errorsList,
              icon: Icons.error_outline,
            );
          },
          cancel: () => ApiErrorModel(
            message: "The request was cancelled. Please try again.",
            icon: Icons.cancel_outlined,
            statusCode: e.response?.statusCode,
            errors: ["Request Cancelled"],
          ),
          unknown: () => ApiErrorModel(
            message:
                "Something went wrong. Please check your connection and try again.",
            icon: Icons.error_outline,
            statusCode: e.response?.statusCode,
            errors: ["Unknown Error"],
          ),
        );
      }
    }
    return ApiErrorModel(
      message: "Something went wrong",
      icon: Icons.error_outline,
      statusCode: 400,
      errors: ["Error Occurred!"],
    );
  }
}
