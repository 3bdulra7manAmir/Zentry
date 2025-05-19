import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../database/shared_preference/app_database.dart';

part 'localization_controller.g.dart';

@riverpod
class LocalizationController extends _$LocalizationController
{
  int selectedLanguageIndex = 1;

  @override
  Locale build()
  {
    loadLocale();
    return const Locale('en');
  }

  Future<void> loadLocale() async
  {
    try
    {
      final languageCode = await UserPreferences.instance.getLanguage();
      state = Locale(languageCode);
      selectedLanguageIndex = languageCode == 'ar' ? 0 : 1;
    }
    catch (_)
    {
      state = const Locale('en');
      selectedLanguageIndex = 1;
    }
  }

  Future<void> setLocale(Locale locale, int index) async
  {
    try
    {
      if (locale.languageCode == 'en' || locale.languageCode == 'ar')
      {
        state = locale;
        selectedLanguageIndex = index;
        await UserPreferences.instance.saveLanguage(locale.languageCode);
      }
    }
    catch (_)
    {
      state = locale;
      selectedLanguageIndex = 1;
    }
  }
}
