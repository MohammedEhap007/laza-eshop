import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData darkTheme = ThemeData(
  fontFamily: 'Inter',
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.mainDark,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.mainDark,
    foregroundColor: AppColors.white,
    elevation: 0,
    scrolledUnderElevation: 0,
    shadowColor: Colors.transparent,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: AppColors.white,
    ),
  ),
  hintColor: AppColors.gray,
  colorScheme: const ColorScheme.dark(
    primary: AppColors.mainDark,
    secondary: AppColors.purple,
    error: AppColors.red,
  ),
);
