import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/cubits/theme_cubit.dart';
import 'core/helpers/cache_helper_checks.dart';
import 'core/routes/app_router.dart';
import 'core/routes/routes.dart';
import 'core/themes/dark_theme.dart';
import 'core/themes/light_theme.dart';

class LazaEshop extends StatelessWidget {
  const LazaEshop({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => ThemeCubit(),
        child: MaterialApp(
          title: 'Laza Eshop',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: context.read<ThemeCubit>().getTheme(),
          themeAnimationDuration: const Duration(milliseconds: 500),
          themeAnimationCurve: Curves.easeInOut,
          onGenerateRoute: AppRouter().onGenerateRoute,
          initialRoute: isOnboardingSeen
              ? isLoggedIn
                    ? Routes.mainScreen
                    : Routes.loginScreen
              : Routes.onBoardingScreen,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
