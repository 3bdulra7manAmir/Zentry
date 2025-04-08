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

  static FontManagerBase get font => i._fonts;

  String _langCode = 'en';

  set langCode(String code) => _langCode = code;

  FontManagerBase get _fonts
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
}