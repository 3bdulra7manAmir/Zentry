import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences
{
  UserPreferences._();

  static final UserPreferences instance = UserPreferences._();

  static const String _languageKey = 'language';
  static const String _countryKey = 'country';
  static const String _themeKey = 'theme';

  static const String _defaultLanguage = 'en';
  static const String _defaultCountry = 'Egypt';
  static const String _countryIndexKey = 'country_index';
  static const int _defaultCountryIndex = 0;

  SharedPreferences? _prefs;

  Future<void> init() async
  {
    _prefs ??= await SharedPreferences.getInstance();
  }

  Future<SharedPreferences> get _preferences async
  {
    _prefs ??= await SharedPreferences.getInstance();
    return _prefs!;
  }

  Future<void> saveLanguage(String code) async
  {
    final prefs = await _preferences;
    await prefs.setString(_languageKey, code);
  }

  Future<String> getLanguage() async
  {
    final prefs = await _preferences;
    return prefs.getString(_languageKey) ?? _defaultLanguage;
  }

  Future<void> saveCountry(String code) async
  {
    final prefs = await _preferences;
    await prefs.setString(_countryKey, code);
  }

  Future<String> getCountry() async
  {
    final prefs = await _preferences;
    return prefs.getString(_countryKey) ?? _defaultCountry;
  }

  Future<void> saveCountryIndex(int index) async
  {
    final prefs = await _preferences;
    await prefs.setInt(_countryIndexKey, index);
  }

  Future<int> getCountryIndex() async
  {
    final prefs = await _preferences;
    return prefs.getInt(_countryIndexKey) ?? _defaultCountryIndex;
  }

  Future<void> saveTheme(bool isDark) async
  {
    final prefs = await _preferences;
    await prefs.setBool(_themeKey, isDark);
  }

  Future<bool> getTheme() async
  {
    try
    {
      final prefs = await _preferences;
      final theme = prefs.getBool(_themeKey);
      if (theme != null) return theme;
    }

    catch (_)
    {
      
    }

    final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
    return brightness == Brightness.dark;
  }

  Future<void> clearAll() async
  {
    final prefs = await _preferences;
    await prefs.clear();
  }
}
