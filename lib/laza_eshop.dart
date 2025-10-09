import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routes/app_router.dart';
import 'core/themes/dark_theme.dart';
import 'core/themes/light_theme.dart';

class LazaEshop extends StatelessWidget {
  const LazaEshop({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Laza Eshop',
        theme: lightTheme,
        darkTheme: darkTheme,
        onGenerateRoute: AppRouter().onGenerateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
