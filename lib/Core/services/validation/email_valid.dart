import 'package:test_app/core/extensions/string.dart';

String emailValidation(String? value)
{
  try
  {
    if (value == null || value.isEmpty)
    {
      return 'Email is required';
    }
    if (!value.isEmail)
    {
      return 'Invalid Email';
    }
    return ""; // No errors
  } on Exception catch (e)
  {
    return e.toString();
  }
}
