import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_app/config/themes/app_colors/app_colors.dart';

part 'theme_controller.g.dart';

@riverpod
class ThemeController extends _$ThemeController
{
  @override
  ThemeMode build()
  {
    AppColors.i.themeMode = 'dark';
    return ThemeMode.dark;
  }

  void toggleTheme()
  {
    state = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    AppColors.i.themeMode = state == ThemeMode.dark ? 'dark' : 'light';
  }

  void setTheme(ThemeMode mode)
  {
    state = mode;
    AppColors.i.themeMode = mode == ThemeMode.dark ? 'dark' : 'light';
  }
}
