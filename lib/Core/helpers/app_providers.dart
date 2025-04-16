import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/l10n/generated/app_localizations.dart';
import '../../config/themes/color_system/controller/theme_controller.dart';
import '../../features/auth/app_form/presentation/controllers/countries_icon_update_provider.dart';
import '../../features/auth/app_form/presentation/controllers/language_icon_update_provider.dart';
import '../../features/auth/app_form/presentation/controllers/theme_mode_text_provide.dart';
import '../../features/auth/login_and_register/presentation/controllers/checkboc_provider.dart';
import '../../features/auth/login_and_register/presentation/controllers/email_or_phone_provider.dart';
import '../../features/auth/login_and_register/presentation/controllers/obsecure_text_provider.dart';
import '../services/localization/controller/localization_controller.dart';



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
  LocalizationController get localeState => ref.read(localizationControllerProvider.notifier);
  Locale get locale => ref.watch(localizationControllerProvider);

  // Theme Mode
  ThemeController get themeController => ref.read(themeControllerProvider.notifier);
  ThemeMode get themeMode => ref.watch(themeControllerProvider);
  // Theme Label
  String get themeLabel => getSelectedThemeLabel(ref, context);

  // Language
  String get languageLabel => getSelectedLanguageLabel(ref, context);
  String get languageFlag => getSelectedLanguageImage(ref);

  // Country
  String get countryLabel => getSelectedCountryName(ref, context);
  String get countryFlag => getSelectedCountryImage(ref, context);

  bool get obscureText => ref.watch(obscurePasswordProvider);
  bool get obscureTextState => ref.read(obscurePasswordProvider.notifier).state = !ref.read(obscurePasswordProvider.notifier).state;

  bool get isChecked => ref.watch(checkboxValueProvider);
  int? get phoneNumberHolder => ref.watch(countryControllerProvider);

  LoginType get loginType => ref.watch(loginTypeProvider);
}
