import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localizationProvider = StateNotifierProvider<LocaleController, Locale>((ref)
{
  return LocaleController();
});

class LocaleController extends StateNotifier<Locale>
{
  LocaleController() : super(const Locale('en'))
  {
    //print('[LocaleController] Initialized with locale: ${state.languageCode}');
  }

  void toggleLocale()
  {
    try
    {
      //print('[toggleLocale] Current locale: ${state.languageCode}');
      if (state.languageCode == 'en')
      {
        state = const Locale('ar');
        //print('[toggleLocale] Locale changed to Arabic');
      }
      else
      {
        state = const Locale('en');
        //print('[toggleLocale] Locale changed to English');
      }
    }

    catch (e)
    {
      //print('[toggleLocale] Error occurred while toggling locale: $e');
    }
  }

  void setLocale(Locale locale)
  {
    try
    {
      //print('[setLocale] Requested locale: ${locale.languageCode}');
      if (locale.languageCode == 'en' || locale.languageCode == 'ar')
      {
        state = locale;
        //print('[setLocale] Locale successfully set to: ${state.languageCode}');
      }
      else
      {
        //print('[setLocale] Unsupported locale: ${locale.languageCode}');
      }
    }

    catch (e)
    {
      //print('[setLocale] Error occurred while setting locale: $e');
    }
  }
}
