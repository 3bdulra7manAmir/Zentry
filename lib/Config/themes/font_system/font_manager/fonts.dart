import 'font_manager_base.dart';
import 'font_manager_roboto.dart';
import 'font_manager_cairo.dart';

class AppFonts
{
  static AppFonts? _instance;

  AppFonts._();

  static AppFonts get i
  {
    _instance ??= AppFonts._();
    return _instance!;
  }

  static FontManagerBase get font
  {
    try
    {
      return i._fonts;
    }

    catch (e)
    {
      return FontManagerRoboto();
    }
  }

  String _langCode = 'en';

  set langCode(String code)
  {
    if (code.isEmpty)
    {
      return;
    }
    _langCode = code.toLowerCase();
  }

  FontManagerBase get _fonts
  {
    try
    {
      if (_langCode == "ar")
      {
        return FontManagerCairo();
      }
      else
      {
        return FontManagerRoboto();
      }
    }

    catch (e)
    {
      return FontManagerRoboto();
    }
  }
}
