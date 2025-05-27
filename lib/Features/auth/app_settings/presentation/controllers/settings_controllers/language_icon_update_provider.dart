import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../core/constants/app_images.dart';
import '../../../../../../core/services/localization/controller/localization_controller.dart';

part 'language_icon_update_provider.g.dart';

@riverpod
String selectedLanguage(SelectedLanguageRef ref)
{
  final locale = ref.watch(localizationControllerProvider);
  return locale.languageCode;
}

String getSelectedLanguageImage(WidgetRef ref)
{
  final languageCode = ref.watch(selectedLanguageProvider);

  return switch (languageCode)
  {
    'ar' => AppAssets.iconsPNG.countryEgyptSelected,
    'en' => AppAssets.iconsPNG.countryUSASelected,
    _ => AppAssets.iconsPNG.formLanguage,
  };
}

String getSelectedLanguageLabel(WidgetRef ref, BuildContext context)
{
  final languageCode = ref.watch(selectedLanguageProvider);

  return switch (languageCode)
  {
    'ar' => AppLocalizations.of(context).arabic,
    'en' => AppLocalizations.of(context).english,
    _ => AppLocalizations.of(context).language,
  };
}
