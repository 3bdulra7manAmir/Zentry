import 'color_manager_base.dart';
import 'color_manager_dark.dart';
import 'color_manager_light.dart';

class AppColors
{
  static AppColors? _instance;

  AppColors._()
  {
    //print('[AppColors] Singleton instance created.');
  }

  static AppColors get i
  {
    try
    {
      _instance ??= AppColors._();
      return _instance!;
    }
    catch (e)
    {
      //print('[AppColors] Error accessing instance: $e');
      rethrow; 
    }
  }

  static ColorManagerBase get color
  {
    try
    {
      return i._colors;
    }

    catch (e)
    {
      //print('[AppColors] Error getting color scheme: $e');
      return LightColorScheme();
    }
  }

  String _themeMode = 'light'; // Default theme is light.

  set themeMode(String mode)
  {
    try
    {
      if (mode == 'light' || mode == 'dark')
      {
        _themeMode = mode;
        //print('[AppColors] Theme mode set to: $_themeMode');
      }
      else
      {
        //print('[AppColors] Unsupported theme mode: "$mode". Keeping "$_themeMode".');
      }
    }

    catch (e)
    {
      //print('[AppColors] Error setting theme mode: $e');
    }
  }

  ColorManagerBase get _colors
  {
    try
    {
      //print('[AppColors] Getting colors for theme mode: $_themeMode');
      if (_themeMode == 'dark')
      {
        return DarkColorScheme();
      }
      else
      {
        return LightColorScheme();
      }
    }
    
    catch (e)
    {
      //print('[AppColors] Error determining color scheme: $e');
      return LightColorScheme(); // Fallback
    }
  }
}
