import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';


// This provider holds the selected theme label
final selectedThemeLabelProvider = StateProvider<String>((ref)
{
  return 'Mode'; // Default theme label
});


String getSelectedThemeLabel(WidgetRef ref, BuildContext context)
{
  try
  {
    final themeLabel = ref.watch(selectedThemeLabelProvider);
    return themeLabel; // Directly return the label stored in the provider
  }

  catch (e)
  {
    // Handle errors and fall back to a default label
    return AppLocalizations.of(context).light;
  }
}
