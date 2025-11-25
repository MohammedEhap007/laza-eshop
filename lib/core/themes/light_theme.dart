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
    primary: AppColors.purple,
    onPrimary: AppColors.white,

    secondary: AppColors.purple,
    onSecondary: AppColors.white,

    surface: AppColors.mainLight,
    onSurface: AppColors.black,

    surfaceContainerHighest: AppColors.darkerLight,

    error: AppColors.red,
    onError: AppColors.white,

    outline: AppColors.gray,
  ),
  cardTheme: const CardThemeData(
    color: AppColors.darkerLight,
    elevation: 0,
  ),

  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.black),
    bodyMedium: TextStyle(color: AppColors.black),
    bodySmall: TextStyle(color: AppColors.gray),
  ),

  iconTheme: const IconThemeData(
    color: AppColors.black,
  ),

  dividerColor: AppColors.gray.withValues(alpha: 0.2),
);
