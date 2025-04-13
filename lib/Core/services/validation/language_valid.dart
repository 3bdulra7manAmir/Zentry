import 'package:test_app/core/extensions/string.dart';

String languageValidation(String? value)
{
  try
  {
    if (value == null || value.isEmpty || value == "Language" || value == "اللغة")
    {
      return 'Language is required';
    }
    if (!value.isLanguage)
    {
      return 'Invalid Language';
    }
    return ""; // No errors
  } on Exception catch (e)
  {
    return e.toString();
  }
}
