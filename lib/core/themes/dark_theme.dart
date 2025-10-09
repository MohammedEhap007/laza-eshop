import 'package:flutter/material.dart';
import 'package:laza_eshop/core/themes/app_colors.dart';

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
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      color: AppColors.white,
    ),
    headlineSmall: TextStyle(
      color: AppColors.white,
    ),
    titleLarge: TextStyle(
      color: AppColors.white,
    ),
    titleMedium: TextStyle(
      color: AppColors.white,
    ),
    titleSmall: TextStyle(
      color: AppColors.white,
    ),
    bodyMedium: TextStyle(
      color: AppColors.gray,
    ),
    bodySmall: TextStyle(
      color: AppColors.gray,
    ),
    labelMedium: TextStyle(
      color: AppColors.white,
    ),
    labelSmall: TextStyle(
      color: AppColors.white,
    ),
  ),
  colorScheme: const ColorScheme.dark(
    primary: AppColors.mainDark,
    secondary: AppColors.purple,
    error: AppColors.red,
  ),
);
