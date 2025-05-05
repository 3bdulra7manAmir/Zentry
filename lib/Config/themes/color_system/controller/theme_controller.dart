import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/services/database/shared_preference/app_database.dart';
import '../colors_manager/app_colors.dart';

part 'theme_controller.g.dart';

@riverpod
class ThemeController extends _$ThemeController {
  @override
  ThemeMode build() {
    AppColors.i.themeMode = 'light';
    loadSavedTheme();
    return ThemeMode.light;
  }

  Future<void> loadSavedTheme() async {
    try {
      final isDarkMode = await UserPreferences.instance.getTheme();
      final loadedMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
      state = loadedMode;
      AppColors.i.themeMode = isDarkMode ? 'dark' : 'light';
    } catch (e) {
      state = ThemeMode.light;
      AppColors.i.themeMode = 'light';
    }
  }

  Future<void> setTheme(ThemeMode mode) async {
    if (mode == ThemeMode.system) {
      return;
    }

    try {
      final isDarkMode = mode == ThemeMode.dark;
      await UserPreferences.instance.saveTheme(isDarkMode);
      state = mode;
      AppColors.i.themeMode = isDarkMode ? 'dark' : 'light';
    } catch (e) {
      state = ThemeMode.light;
      AppColors.i.themeMode = 'light';
    }
  }

  void setThemeFromString(String value) {
    final lower = value.toLowerCase();
    final themeMode =
        (lower == 'dark' || lower == 'داكن') ? ThemeMode.dark : ThemeMode.light;
    setTheme(themeMode);
  }
}
