import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_app/config/themes/color_system/colors_manager/app_colors.dart';

import '../../../../core/services/database/shared_preference/app_database.dart';

part 'theme_controller.g.dart';

@riverpod
class ThemeController extends _$ThemeController
{
  @override
  ThemeMode build()
  {
    // Set default theme
    AppColors.i.themeMode = 'light';
    
    // Load saved theme asynchronously
    _loadSavedTheme();
    
    return ThemeMode.light;
  }
  
  Future<void> _loadSavedTheme() async
  {
    try
    {
      // Get theme preference using UserPreferences
      bool isDarkMode = await UserPreferences.instance.getTheme();
      
      if (isDarkMode)
      {
        state = ThemeMode.dark; // Update state and colors if dark mode is saved
        AppColors.i.themeMode = 'dark';
      }
      //print('[ThemeController] Loaded saved theme: ${isDarkMode ? 'dark' : 'light'}');
    }
    
    catch (e)
    {
      //print('[ThemeController] Error loading saved theme: $e');
    }
  }
  
  Future<void> setTheme(ThemeMode mode) async
  {
    try
    {
      if (mode != ThemeMode.system)
      {
        bool isDarkMode = mode == ThemeMode.dark;
        await UserPreferences.instance.saveTheme(isDarkMode);
        state = mode; // Update the state with the new theme mode
        AppColors.i.themeMode = isDarkMode ? 'dark' : 'light';
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