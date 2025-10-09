import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Inter',
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.mainLight,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.mainLight,
    foregroundColor: AppColors.black,
    elevation: 0,
    scrolledUnderElevation: 0,
    shadowColor: Colors.transparent,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: AppColors.black,
    ),
  ),
  hintColor: AppColors.gray,
  colorScheme: const ColorScheme.light(
    primary: AppColors.mainLight,
    secondary: AppColors.purple,
    error: AppColors.red,
  ),
);
