import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../config/l10n/generated/app_localizations.dart';
import '../../../core/services/localization/controller/localization_controller.dart';
import '../../config/themes/color_system/controller/theme_controller.dart';
import '../../features/auth/app_form/presentation/controllers/countries_icon_update_provider.dart';
import '../../features/auth/app_form/presentation/controllers/language_icon_update_provider.dart';
import '../../features/auth/app_form/presentation/controllers/theme_mode_text_provide.dart';


// Localized helpers
String getAppText(BuildContext context, String Function(AppLocalizations) selector)
{
  return selector(AppLocalizations.of(context));
}

class AppProvidersProvider
{
  final WidgetRef ref;
  final BuildContext context;

  AppProvidersProvider(this.ref, this.context);

  // Localization
  LocalizationController get locale => ref.read(localizationControllerProvider.notifier);

  // Theme Mode
  ThemeMode get themeMode => ref.watch(themeControllerProvider);
  // Theme Label
  String get themeLabel => getSelectedThemeLabel(ref, context);

  // Language
  String get languageLabel => getSelectedLanguageLabel(ref, context);
  String get languageFlag => getSelectedLanguageImage(ref);

  // Country
  String get countryLabel => getSelectedCountryName(ref, context);
  String get countryFlag => getSelectedCountryImage(ref, context);
}
