import 'dart:developer';

import 'package:flutter/foundation.dart';

class AppLogger {
  // ANSI color codes
  /// the _reset code is an ANSI escape code that tells the terminal
  /// to reset text color and style back to normal
  /// after printing colored text.
  static const _reset = '\x1B[0m';
  static const _red = '\x1B[31m';
  static const _green = '\x1B[32m';
  static const _yellow = '\x1B[33m';
  static const _blue = '\x1B[34m';
  static const _cyan = '\x1B[36m';

  static void _printLog(
    String logType,
    String message, {
    required String color,
  }) {
    final time = DateTime.now()
        .toIso8601String()
        .split('T')
        .last
        .split('.')
        .first;
    log('$color[$time] $logType → $message$_reset');
  }

  static void info(String message) {
    if (kDebugMode) {
      _printLog('ℹ️ INFO', message, color: _blue);
    }
  }

  static void debug(String message) {
    if (kDebugMode) {
      _printLog('🐛 DEBUG', message, color: _cyan);
    }
  }

  static void success(String message) {
    if (kDebugMode) {
      _printLog('✅ SUCCESS', message, color: _green);
    }
  }

  static void warning(String message) {
    if (kDebugMode) {
      _printLog('⚠️ WARNING', message, color: _yellow);
    }
  }

  static void error(String message) {
    if (kDebugMode) {
      _printLog('❌ ERROR', message, color: _red);
    }
  }
}
