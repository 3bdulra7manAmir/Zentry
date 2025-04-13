import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/controller/theme_controller.dart';


final selectedThemeLabelProvider = Provider<String>((ref)
{
  final themeMode = ref.watch(themeControllerProvider);
  return themeMode == ThemeMode.dark ? 'dark' : 'light';
});

String getSelectedThemeLabel(WidgetRef ref, BuildContext context)
{
  final themeLabel = ref.watch(selectedThemeLabelProvider).toLowerCase();
  if (themeLabel == 'dark' || themeLabel == 'داكن')
  {
    return AppLocalizations.of(context).dark;
  }
  else
  {
    return AppLocalizations.of(context).light;
  }
}