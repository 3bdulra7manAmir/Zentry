import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_controller.g.dart';

@riverpod
class ThemeNotifier extends _$ThemeNotifier
{
  @override
  ThemeMode build() => ThemeMode.dark; // Change to ThemeMode.light if needed

  void toggleTheme(bool isDark)
  {
    state = isDark ? ThemeMode.dark : ThemeMode.light;
  }
}
