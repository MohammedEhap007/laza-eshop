import 'package:flutter/material.dart';
import 'package:laza_eshop/core/themes/app_colors.dart';

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
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      color: AppColors.black,
    ),
    headlineSmall: TextStyle(
      color: AppColors.black,
    ),
    titleLarge: TextStyle(
      color: AppColors.black,
    ),
    titleMedium: TextStyle(
      color: AppColors.black,
    ),
    titleSmall: TextStyle(
      color: AppColors.black,
    ),
    bodyMedium: TextStyle(
      color: AppColors.gray,
    ),
    bodySmall: TextStyle(
      color: AppColors.gray,
    ),
    labelMedium: TextStyle(
      color: AppColors.black,
    ),
    labelSmall: TextStyle(
      color: AppColors.black,
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: AppColors.mainLight,
    secondary: AppColors.purple,
    error: AppColors.red,
  ),
);
