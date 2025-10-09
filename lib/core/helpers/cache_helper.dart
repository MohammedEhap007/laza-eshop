import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/app_logger.dart';

class CacheHelper {
  static late SharedPreferences _prefs;
  static const _storage = FlutterSecureStorage();

  static init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> setData({
    required String key,
    required dynamic value,
  }) async {
    AppLogger.info(
      'CacheHelper.setData() - Setting cache data\n'
      '  Key: "$key"\n'
      '  Value: "$value"\n'
      '  Type: ${value.runtimeType}',
    );
    if (value is String) {
      await _prefs.setString(key, value);
    } else if (value is int) {
      await _prefs.setInt(key, value);
    } else if (value is double) {
      await _prefs.setDouble(key, value);
    } else if (value is bool) {
      await _prefs.setBool(key, value);
    } else if (value is List<String>) {
      await _prefs.setStringList(key, value);
    } else {
      throw UnsupportedError('Unsupported Type');
    }
  }

  static String? getString({required String key}) {
    AppLogger.info(
      'CacheHelper.getString() - Getting cache data\n  Key: "$key"',
    );
    return _prefs.getString(key);
  }

  static bool? getBool({required String key}) {
    AppLogger.info('CacheHelper.getBool() - Getting cache data\n  Key: "$key"');
    return _prefs.getBool(key);
  }

  static int? getInt({required String key}) {
    AppLogger.info('CacheHelper.getInt() - Getting cache data\n  Key: "$key"');
    return _prefs.getInt(key);
  }

  static double? getDouble({required String key}) {
    AppLogger.info(
      'CacheHelper.getDouble() - Getting cache data\n  Key: "$key"',
    );
    return _prefs.getDouble(key);
  }

  static List<String>? getStringList({required String key}) {
    AppLogger.info(
      'CacheHelper.getStringList() - Getting cache data\n  Key: "$key"',
    );
    return _prefs.getStringList(key);
  }

  static Future<bool> remove({required String key}) async {
    AppLogger.info('CacheHelper.remove() - Removing cache data\n  Key: "$key"');
    return await _prefs.remove(key);
  }

  static Future<bool> clearAllData() async {
    AppLogger.info('CacheHelper.clearAllData() - Clearing all cache data');
    return await _prefs.clear();
  }

  static Future<void> setSecureData({
    required String key,
    required String value,
  }) async {
    AppLogger.info(
      'CacheHelper.setSecureData() - Setting secure cache data\n'
      '  Key: "$key"\n'
      '  Value: "$value"',
    );
    await _storage.write(key: key, value: value);
  }

  static Future<String?> getSecureData({required String key}) async {
    AppLogger.info(
      'CacheHelper.getSecureData() - Getting secure cache data\n  Key: "$key"',
    );
    return await _storage.read(key: key);
  }

  static Future<void> deleteSecureData({required String key}) async {
    AppLogger.info(
      'CacheHelper.deleteSecureData() - Deleting secure cache data\n  Key: "$key"',
    );
    return await _storage.delete(key: key);
  }

  static Future<void> deleteAllSecureData() async {
    AppLogger.info(
      'CacheHelper.deleteAllSecureData() - Deleting all secure cache data',
    );
    return await _storage.deleteAll();
  }
}
