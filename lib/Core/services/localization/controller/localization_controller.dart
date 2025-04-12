import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'localization_controller.g.dart';

@riverpod
class LocalizationController extends _$LocalizationController
{
  int? selectedLanguageIndex;

  @override
  Locale build()
  {
    //debugPrint('[LocalizationController] Initialized with default locale: en');
    return const Locale('en');
  }

  void setLocale(Locale locale, [int? index])
  {
    try
    {
      //debugPrint('[setLocale] Requested: ${locale.languageCode}, index: $index');

      if (locale.languageCode == 'en' || locale.languageCode == 'ar')
      {
        state = locale;
        selectedLanguageIndex = index;
        //debugPrint('[setLocale] Locale successfully set to: ${state.languageCode}');
      }
      else
      {
        //debugPrint('[setLocale] Unsupported locale: ${locale.languageCode}');
      }

    }
    
    catch (e, stack)
    {
      //debugPrint('[setLocale] Error: $e');
      //debugPrint('[setLocale] Stack trace: $stack');
    }
  }
}
