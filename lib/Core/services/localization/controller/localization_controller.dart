import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../database/shared_preference/app_database.dart';

part 'localization_controller.g.dart';

@riverpod
class LocalizationController extends _$LocalizationController
{
  int? selectedLanguageIndex;

  @override
  Locale build()
  {
    _loadLocale();
    return const Locale('en'); // default
  }

  Future<void> _loadLocale() async
  {
    try
    {
      final languageCode = await UserPreferences.instance.getLanguage();
      state = Locale(languageCode ?? 'en');
    } on Exception catch (e)
    {
      print("Localization Loading Error: ${e.toString()}");
    }
  }

  void setLocale(Locale locale, [int? index]) async
  {
    try
    {
      if (locale.languageCode == 'en' || locale.languageCode == 'ar')
      {
        state = locale;
        selectedLanguageIndex = index;
        await UserPreferences.instance.saveLanguage(locale.languageCode);
      }
    } on Exception catch (e)
    {
      print("Localization setting Error: ${e.toString()}");
    }
  }
}