import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/services/localization/controller/localization_controller.dart';

String getSelectedLanguageImage(WidgetRef ref)
{
  final localeController = ref.watch(localizationControllerProvider.notifier);
  final selectedIndex = localeController.selectedLanguageIndex;

  if (selectedIndex == null)
  {
    return AppAssets.iconsPNG.languagePNG; // fallback
  }

  return switch (selectedIndex)
  {
    0 => AppAssets.iconsPNG.egFlagSelectedPNG,
    1 => AppAssets.iconsPNG.unitedStatesFlagSelectedPNG,
    _ => AppAssets.iconsPNG.languagePNG, //Default Case
  };
}

String getSelectedLanguageLabel(WidgetRef ref, BuildContext context)
{
  final localeController = ref.watch(localizationControllerProvider.notifier);
  final selectedIndex = localeController.selectedLanguageIndex;

  // Optional: localize the labels if needed using AppLocalizations.of(context)
  return switch (selectedIndex)
  {
    0 => AppLocalizations.of(context).arabic,
    1 => AppLocalizations.of(context).english,
    _ => AppLocalizations.of(context).language, // fallback to "Language"
  };
}