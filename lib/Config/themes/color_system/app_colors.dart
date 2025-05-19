import 'colors_manager/color_manager_base.dart';
import 'colors_manager/color_manager_dark.dart';
import 'colors_manager/color_manager_light.dart';

class AppColors
{
  static AppColors? _instance;

  AppColors._();

  static AppColors get i
  {
    _instance ??= AppColors._();
    return _instance!;
  }

  static ColorManagerBase get color => i._colors;

  String _themeMode = 'light';

  set themeMode(String mode)
  {
    if (mode == 'light' || mode == 'dark')
    {
      _themeMode = mode;
    }
  }

  ColorManagerBase get _colors
  {
    return _themeMode == 'dark' ? DarkColorScheme() : LightColorScheme();
  }
}
