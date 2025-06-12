import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/services/database/shared_preference/app_database.dart';
import '../color_system/app_colors.dart';

part 'theme_controller.g.dart';

enum AppTheme
{
  light,
  dark;

  static AppTheme fromString(String value)
  {
    final lower = value.toLowerCase();
    if (lower == 'dark' || lower == 'داكن') return AppTheme.dark;
    return AppTheme.light;
  }

  ThemeMode get mode => this == AppTheme.dark ? ThemeMode.dark : ThemeMode.light;
}

@riverpod
class ThemeController extends _$ThemeController
{
  bool _isChanging = false;

  @override
  ThemeMode build()
  {
    Future.microtask(loadSavedTheme); // Asynchronously load saved theme after build returns
    AppColors.i.themeMode = 'light'; // Temporary initial fallback
    return ThemeMode.light;
  }

  Future<void> loadSavedTheme() async
  {
    try
    {
      final isDarkMode = await UserPreferences.instance.getTheme();
      final loadedMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
      state = loadedMode;
      AppColors.i.themeMode = isDarkMode ? 'dark' : 'light';
    }
    catch (e)
    {
      state = ThemeMode.light;
      AppColors.i.themeMode = 'light';
    }
  }

  Future<void> setTheme(ThemeMode mode) async
  {
    if (_isChanging || mode == ThemeMode.system) return;

    _isChanging = true;
    try
    {
      final isDarkMode = mode == ThemeMode.dark;
      await UserPreferences.instance.saveTheme(isDarkMode);
      state = mode;
      AppColors.i.themeMode = isDarkMode ? 'dark' : 'light';
    }
    catch (e)
    {
      state = ThemeMode.light;
      AppColors.i.themeMode = 'light';
    }
    finally
    {
      _isChanging = false;
    }
  }

  void setThemeFromString(String value)
  {
    final theme = AppTheme.fromString(value);
    setTheme(theme.mode);
  }
}
