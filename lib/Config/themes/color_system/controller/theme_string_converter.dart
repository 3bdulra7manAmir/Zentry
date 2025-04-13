import 'package:flutter/material.dart';
//import '../../../l10n/generated/app_localizations.dart';

ThemeMode stringToThemeMode(String value)
{
  try
  {
    final lower = value.toLowerCase();
    if (lower == 'dark' || lower == 'داكن') return ThemeMode.dark;
    if (lower == 'light' || lower == 'فاتح') return ThemeMode.light;
    return ThemeMode.light;
  }

  catch (_)
  {
    return ThemeMode.light;
  }
}