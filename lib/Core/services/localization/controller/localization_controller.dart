import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../database/shared_preference/app_database.dart';

part 'localization_controller.g.dart';

@riverpod
class LocalizationController extends _$LocalizationController
{
  int selectedLanguageIndex = 1; // Default index: 1 => English
  bool _isChanging = false;

  @override
  Locale build()
  {
    Future.microtask(loadLocale); // Safe async call after build
    return const Locale('en');
  }

  Future<void> loadLocale() async
  {
    try
    {
      final code = await UserPreferences.instance.getLanguage();
      state = Locale(code);
      selectedLanguageIndex = code == 'ar' ? 0 : 1;
    } catch (e)
    {
      state = const Locale('en');
      selectedLanguageIndex = 1;
    }
  }

  Future<void> setLocale(Locale locale, int index) async
  {
    if (_isChanging) return;
    _isChanging = true;

    try
    {
      final code = locale.languageCode.toLowerCase();
      if (code != 'en' && code != 'ar')
      {
        return;
      }
      state = locale;
      selectedLanguageIndex = index;
      await UserPreferences.instance.saveLanguage(code);
    }
    catch (e)
    {
      state = const Locale('en');
      selectedLanguageIndex = 1;
    }
    finally
    {
      _isChanging = false;
    }
  }

  Future<void> setLocaleFromCode(String code) async /// Helper method to set language by string
  {
    final lower = code.toLowerCase();
    final index = lower == 'ar' ? 0 : 1;
    await setLocale(Locale(lower), index);
  }
}
