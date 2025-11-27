import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../enums/theme_mode_state_enum.dart';
import '../helpers/cache_helper.dart';
import '../helpers/cache_helper_keys.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial()) {
    _loadTheme();
  }

  ThemeModeState currentTheme = ThemeModeState.system;

  Future<void> selectTheme(ThemeModeState theme) async {
    currentTheme = theme;

    await CacheHelper.setData(
      key: CacheHelperKeys.themeMode,
      value: currentTheme.name,
    );

    emit(ThemeChanged());
  }

  ThemeMode getTheme() {
    switch (currentTheme) {
      case ThemeModeState.light:
        return ThemeMode.light;

      case ThemeModeState.dark:
        return ThemeMode.dark;

      case ThemeModeState.system:
        return ThemeMode.system;
    }
  }

  void _loadTheme() {
    String? savedTheme = CacheHelper.getString(key: CacheHelperKeys.themeMode);

    if (savedTheme != null) {
      currentTheme = ThemeModeState.values.firstWhere(
        (themeMode) => themeMode.name == savedTheme,
        orElse: () => ThemeModeState.system,
      );
    }

    emit(ThemeChanged());
  }
}
