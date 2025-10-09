import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_eshop/core/routes/app_router.dart';
import 'package:laza_eshop/core/themes/dark_theme.dart';
import 'package:laza_eshop/core/themes/light_theme.dart';

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
