import 'cache_helper.dart';
import 'cache_helper_keys.dart';

bool isOnboardingSeen =
    CacheHelper.getBool(
      key: CacheHelperKeys.onboarding,
    ) ??
    false;

bool isLoggedIn =
    CacheHelper.getBool(
      key: CacheHelperKeys.login,
    ) ??
    false;
