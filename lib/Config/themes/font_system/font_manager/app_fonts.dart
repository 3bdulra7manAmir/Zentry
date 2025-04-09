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
    
    catch (e, stackTrace)
    {
      //print('[AppFonts.font] Error getting fonts: $e\n$stackTrace');
      return FontManagerRoboto(); // Safe fallback
    }
  }

  String _langCode = 'en'; // Default language

  /// Sets language code for choosing fonts dynamically
  set langCode(String code)
  {
    if (code.isEmpty)
    {
      //print('[AppFonts.langCode] Empty language code provided. Ignored.');
      return;
    }
    //print('[AppFonts.langCode] Language set to: "$code"');
    _langCode = code.toLowerCase();
  }

  /// Returns the appropriate font based on current language
  FontManagerBase get _fonts
  {
    try
    {
      if (_langCode == "ar")
      {
        //print('[AppFonts._fonts] Using Cairo for Arabic.');
        return FontManagerCairo();
      }
      else
      {
        //print('[AppFonts._fonts] Using Roboto for non-Arabic.');
        return FontManagerRoboto();
      }
    }
    
    catch (e, stackTrace)
    {
      //print('[AppFonts._fonts] Error determining font: $e\n$stackTrace');
      return FontManagerRoboto(); // Fallback
    }
  }
}
