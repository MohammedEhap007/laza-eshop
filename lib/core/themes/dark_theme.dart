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
    primary: AppColors.purple,
    onPrimary: AppColors.white,

    secondary: AppColors.purple,
    onSecondary: AppColors.white,

    surface: AppColors.mainDark,
    onSurface: AppColors.white,

    surfaceContainerHighest: AppColors.lighterDark,

    error: AppColors.lightRed,
    onError: AppColors.white,

    outline: AppColors.gray,
  ),

  cardTheme: const CardThemeData(
    color: AppColors.lightDark,
    elevation: 0,
  ),

  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.white),
    bodyMedium: TextStyle(color: AppColors.white),
    bodySmall: TextStyle(color: AppColors.gray),
  ),

  iconTheme: const IconThemeData(
    color: AppColors.white,
  ),

  dividerColor: AppColors.gray.withValues(alpha: 0.2),
);
