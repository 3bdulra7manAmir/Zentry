import 'package:test_app/core/extensions/string.dart';

String passwordValidation(String? value)
{
  try
  {
    if (value == null || value.isEmpty)
    {
      return 'Password is required';
    }
    if (!value.hasValidPassword)
    {
      return 'Invalid Password';
    }
    return ""; // No errors
  } on Exception catch (e)
  {
    return e.toString();
  }
}
