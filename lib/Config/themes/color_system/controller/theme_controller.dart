import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_app/config/themes/color_system/colors_manager/app_colors.dart';

part 'theme_controller.g.dart';

@riverpod
class ThemeController extends _$ThemeController
{
  @override
  ThemeMode build()
  {
    try
    {
      AppColors.i.themeMode = 'light'; // Default on app start
      //print('[ThemeController] Initialized with ThemeMode.dark');
      return ThemeMode.light;
    }

    catch (e)
    {
      //print('[ThemeController] Error during initialization: $e');
      return ThemeMode.light; // Fallback
    }
  }

  void toggleTheme()
  {
    try
    {
      final isCurrentlyDark = state == ThemeMode.dark;
      state = isCurrentlyDark ? ThemeMode.light : ThemeMode.dark;
      AppColors.i.themeMode = state == ThemeMode.dark ? 'dark' : 'light';
      //print('[ThemeController] Theme toggled to: ${state.name}');
    }

    catch (e)
    {
      //print('[ThemeController] Error toggling theme: $e');
    }
  }

  void setTheme(ThemeMode mode)
  {
    try
    {
      if (mode != ThemeMode.system)
      {
        state = mode;
        AppColors.i.themeMode = mode == ThemeMode.dark ? 'dark' : 'light';
        //print('[ThemeController] Theme explicitly set to: ${state.name}');
      }
      else
      {
        //print('[ThemeController] ThemeMode.system is not supported by AppColors yet.');
      }
    }
    
    catch (e)
    {
      //print('[ThemeController] Error setting theme: $e');
    }
  }
}
