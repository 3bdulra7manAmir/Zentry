import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../config/themes/controller/theme_controller.dart';

part 'theme_mode_text_controller.g.dart';

@riverpod
String selectedThemeLabel(Ref ref)
{
  final themeMode = ref.watch(themeControllerProvider);
  return themeMode == ThemeMode.dark ? 'dark' : 'light';
}

String getSelectedThemeLabel(WidgetRef ref, BuildContext context)
{
  final themeLabel = ref.watch(selectedThemeLabelProvider).toLowerCase();
  return (themeLabel == 'dark' || themeLabel == 'داكن') ? AppLocalizations.of(context).dark : AppLocalizations.of(context).light;
}