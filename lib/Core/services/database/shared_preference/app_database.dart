import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences
{
  UserPreferences._();

  static final UserPreferences _instance = UserPreferences._();
  static UserPreferences get instance => _instance;

  // Save Language
  Future<void> saveLanguage(String languageCode) async
  {
    try
    {
      final prefs = await SharedPreferences.getInstance();
      bool isSaved = await prefs.setString('language', languageCode);

      if (isSaved)
      {
        //print("Language saved: $languageCode");
      }
      else
      {
        //print("Failed to save language");
      }
    }
    
    catch (e)
    {
      //print("Error saving language: $e");
    }
  }

  // Get Language
  Future<String?> getLanguage() async
  {
    try
    {
      final prefs = await SharedPreferences.getInstance();
      String? languageCode = prefs.getString('language') ?? 'en'; // Default to 'en'
      //print("Fetched language: $languageCode");
      return languageCode;
    }
    
    catch (e)
    {
      //print("Error fetching language: $e");
      return 'en'; // Default value
    }
  }

  // Save Country
  Future<void> saveCountry(String countryCode) async
  {
    try
    {
      final prefs = await SharedPreferences.getInstance();
      bool isSaved = await prefs.setString('country', countryCode);
      if (isSaved)
      {
        //print("Country saved: $countryCode");
      }
      else
      {
        //print("Failed to save country");
      }
    }
    
    catch (e)
    {
      //print("Error saving country: $e");
    }
  }

  // Get Country
  Future<String?> getCountry() async
  {
    try
    {
      final prefs = await SharedPreferences.getInstance();
      String? countryCode = prefs.getString('country') ?? 'US'; // Default to 'US'
      //print("Fetched country: $countryCode");
      return countryCode;
    }
    
    catch (e)
    {
      //print("Error fetching country: $e");
      return 'US'; // Default value
    }
  }

  // Save Theme
  Future<void> saveTheme(bool isDarkMode) async
  {
    try
    {
      final prefs = await SharedPreferences.getInstance();
      bool isSaved = await prefs.setBool('theme', isDarkMode);
      if (isSaved)
      {
        //print("Theme saved: ${isDarkMode ? 'Dark' : 'Light'}");
      }
      else
      {
        //print("Failed to save theme");
      }
    }
    
    catch (e)
    {
      //print("Error saving theme: $e");
    }
  }

  // Get Theme
  Future<bool> getTheme() async
  {
    try
    {
      final prefs = await SharedPreferences.getInstance();
      bool? isDarkMode = prefs.getBool('theme');
      if (isDarkMode != null)
      {
        //print("Fetched theme: ${isDarkMode ? 'Dark' : 'Light'}");
        return isDarkMode;
      }
      else
      {
        // If theme is not set, fallback to system theme
        Brightness systemBrightness = WidgetsBinding.instance.window.platformBrightness;
        bool isSystemDarkMode = systemBrightness == Brightness.dark;
        print("Fetched system theme: ${isSystemDarkMode ? 'Dark' : 'Light'}");
        return isSystemDarkMode;
      }
    }
    
    catch (e) // If error occurs, fallback to system theme
    {
      //print("Error fetching theme: $e");
      Brightness systemBrightness = WidgetsBinding.instance.window.platformBrightness; 
      bool isSystemDarkMode = systemBrightness == Brightness.dark;
      return isSystemDarkMode;
    }
  }
}