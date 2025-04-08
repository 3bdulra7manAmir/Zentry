import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../l10n/generated/app_localizations.dart';
import 'theme_controller.dart';

ThemeMode stringToThemeMode(String value)
{
  return value.toLowerCase() == 'dark' ? ThemeMode.dark : ThemeMode.light;
}

String themeModeToString(ThemeMode mode, BuildContext context)
{
  final loc = AppLocalizations.of(context);
  return mode == ThemeMode.dark ? loc.dark : loc.light;
}

final selectedThemeLabelProvider = StateProvider<String?>((ref)
{
  final currentTheme = ref.watch(themeControllerProvider);
  return currentTheme == ThemeMode.dark ? 'dark' : 'light'; // You can use localized labels too
});
