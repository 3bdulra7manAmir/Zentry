import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../Features/auth/app_form/presentation/controllers/language_icon_update_provider.dart';
import '../../config/l10n/generated/app_localizations.dart';
import '../../config/themes/color_system/controller/theme_controller.dart';
import '../../features/auth/app_form/presentation/controllers/countries_icon_update_provider.dart';
import '../../features/auth/app_form/presentation/controllers/theme_mode_text_provide.dart';
import '../../features/auth/login/presentation/controllers/checkbox_controller.dart';
import '../../features/auth/login/presentation/controllers/email_phone_switcher.dart';
import '../../features/auth/login/presentation/controllers/obsecure_text_controller.dart';
import '../../features/auth/register/presentation/controllers/email_or_phone_provider.dart';
import '../../features/auth/register/presentation/controllers/obsecure_text_provider.dart';
import '../../features/auth/verification_code/presentation/controllers/otp_input_controller.dart';
import '../services/localization/controller/localization_controller.dart';


class AppProvidersProvider
{
  final WidgetRef ref;
  final BuildContext context;

  AppProvidersProvider(this.ref, this.context);

  LocalizationController get localeState => ref.read(localizationControllerProvider.notifier);
  Locale get locale => ref.watch(localizationControllerProvider);

  ThemeController get themeController => ref.read(themeControllerProvider.notifier);
  ThemeMode get themeMode => ref.watch(themeControllerProvider);
  String get themeLabel => getSelectedThemeLabel(ref, context);

  String get languageLabel => getSelectedLanguageLabel(ref, context);
  String get languageFlag => getSelectedLanguageImage(ref);

  String get countryLabel => getSelectedCountryName(ref, context);
  String get countryFlag => getSelectedCountryImage(ref, context);

  bool get obscureText => ref.watch(obscurePasswordProvider);
  bool get obscureText2 => ref.watch(obscurePasswordProvider2);
  bool get obscureText3 => ref.watch(obscurePasswordProvider3);
  bool get obscureTextState => ref.read(obscurePasswordProvider.notifier).state = !ref.read(obscurePasswordProvider.notifier).state;
  bool get obscureTextState2 => ref.read(obscurePasswordProvider2.notifier).state = !ref.read(obscurePasswordProvider2.notifier).state;
  bool get obscureTextState3 => ref.read(obscurePasswordProvider3.notifier).state = !ref.read(obscurePasswordProvider3.notifier).state;

  bool get isChecked => ref.watch(checkboxValueProvider);
  int? get phoneNumberHolder => ref.watch(countryControllerProvider);

  LoginType get loginType => ref.watch(loginTypeProvider);
  SignUpType get signUpType => ref.watch(signUpTypeProvider);

  String get otpProvider => ref.watch(otpInputProvider);
}

String getAppText(BuildContext context, String Function(AppLocalizations) selector,)
{
  return selector(AppLocalizations.of(context));
}