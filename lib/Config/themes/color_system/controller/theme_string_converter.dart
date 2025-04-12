import 'package:flutter/material.dart';
import '../../../l10n/generated/app_localizations.dart';

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

String themeModeToLocalizedLabel(ThemeMode mode, BuildContext context)
{
  try
  {
    final loc = AppLocalizations.of(context);
    return mode == ThemeMode.dark ? loc.dark : loc.light;
  }

  catch (_)
  {
    return mode == ThemeMode.dark ? 'Dark' : 'Light';
  }
}

String themeModeToStringKey(ThemeMode mode)
{
  return mode == ThemeMode.dark ? 'dark' : 'light';
}
