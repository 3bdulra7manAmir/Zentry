import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/services/localization/controller/localization_controller.dart';

final selectedLanguageProvider = Provider<String>((ref)
{
  final locale = ref.watch(localizationControllerProvider);
  return locale.languageCode;
});

// Update the existing functions to use this provider
String getSelectedLanguageImage(WidgetRef ref)
{
  final languageCode = ref.watch(selectedLanguageProvider);

  return switch (languageCode)
  {
    'ar' => AppAssets.iconsPNG.egFlagSelectedPNG,
    'en' => AppAssets.iconsPNG.unitedStatesFlagSelectedPNG,
    _ => AppAssets.iconsPNG.languagePNG, // fallback
  };
}

String getSelectedLanguageLabel(WidgetRef ref, BuildContext context)
{
  final languageCode = ref.watch(selectedLanguageProvider);

  return switch (languageCode)
  {
    'ar' => AppLocalizations.of(context).arabic,
    'en' => AppLocalizations.of(context).english,
    _ => AppLocalizations.of(context).language, // fallback
  };
}