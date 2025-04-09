import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localizationProvider = StateNotifierProvider<LocaleController, Locale>((ref)
{
  return LocaleController();
});

class LocaleController extends StateNotifier<Locale>
{
  LocaleController() : super(const Locale('en'));

  void toggleLocale()
  {
    if (state.languageCode == 'en')
    {
      state = const Locale('ar');
    }

    else
    {
      state = const Locale('en');
    }
  }

  void setLocale(Locale locale)
  {
    state = locale;
  }
}
