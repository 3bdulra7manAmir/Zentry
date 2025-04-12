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
    
    // Map the theme label to its localized equivalent
    switch (themeLabel)
    {
      case 'dark':
        return AppLocalizations.of(context).dark; // Fallback in case localization is unavailable
      case 'داكن':
        return AppLocalizations.of(context).dark; // Fallback
      case 'light':
        return AppLocalizations.of(context).light; // Fallback in case localization is unavailable
      case 'فاتح':
        return AppLocalizations.of(context).light; // Fallback
      default:
        return AppLocalizations.of(context).light; // Default to 'Light' if no match
    }
  }
  
  catch (e)
  {
    // Handle errors and fall back to a default label if necessary
    return AppLocalizations.of(context).light;
  }
}
