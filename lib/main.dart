import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/cache_helper.dart';
import 'core/utils/app_bloc_observer.dart';
import 'laza_eshop.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await ScreenUtil.ensureScreenSize();
  await CacheHelper.init();
  await setupGetIt();
  runApp(const LazaEshop());
}
