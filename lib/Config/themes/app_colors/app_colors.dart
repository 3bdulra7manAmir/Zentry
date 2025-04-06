import 'color_manager_base.dart';
import 'color_manager_dark.dart';
import 'color_manager_light.dart';

class AppColors
{
  static AppColors? _instance;

  AppColors._();

  static AppColors get i
  {
    _instance ??= AppColors._();
    return _instance!;
  }

  static ColorManagerBase get color
  {
    return i._colors;
  }

  String _themeMode = 'light';  // Can be light or dark,

  set themeMode(String mode) => _themeMode = mode;

  ColorManagerBase get _colors
  {
    if (_themeMode == 'dark')
    {
      return DarkColorScheme();
    } else {
      return LightColorScheme();
    }
  }
}
