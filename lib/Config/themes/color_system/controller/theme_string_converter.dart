import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../l10n/generated/app_localizations.dart';
import 'theme_controller.dart';

/// Converts user-facing string (localized) into ThemeMode safely.
ThemeMode stringToThemeMode(String value)
{
  try
  {
    final lower = value.toLowerCase();

    // Support both Arabic and English terms
    if (lower == 'dark' || lower == 'داكن')
    {
      return ThemeMode.dark;
    }
    else if (lower == 'light' || lower == 'فاتح')
    {
      return ThemeMode.light;
    }
    else
    {
      //print('[stringToThemeMode] Unknown input: "$value", defaulting to light.');
      return ThemeMode.light;
    }
  }
  
  catch (e)
  {
    //print('[stringToThemeMode] Error: $e');
    return ThemeMode.light;
  }
}

/// Returns localized string for a ThemeMode (used for display)
String themeModeToLocalizedLabel(ThemeMode mode, BuildContext context)
{
  try
  {
    final loc = AppLocalizations.of(context);
    return mode == ThemeMode.dark ? loc.dark : loc.light;
  }

  catch (e)
  {
    //print('[themeModeToLocalizedLabel] Error: $e');
    return mode == ThemeMode.dark ? 'Dark' : 'Light';
  }
}

/// Returns internal string keys (never localized) — used for logic/storage
String themeModeToStringKey(ThemeMode mode)
{
  return mode == ThemeMode.dark ? 'dark' : 'light';
}

/// Keeps track of current theme as 'dark' or 'light'
final selectedThemeLabelProvider = StateProvider<String?>((ref)
{
  try
  {
    final currentTheme = ref.watch(themeControllerProvider);
    final key = themeModeToStringKey(currentTheme);
    //print('[selectedThemeLabelProvider] Current theme key: $key');
    return key;
  }

  catch (e)
  {
    //print('[selectedThemeLabelProvider] Error: $e');
    return 'light';
  }
});
