import 'package:test_app/core/extensions/string.dart';

String phoneNumberValidation(String? value)
{
  try
  {
    final cleanedValue = value?.convertNumbers;
    if (cleanedValue == null || cleanedValue.isEmpty)
    {
      return 'Phone number is required';
    }
    if (!cleanedValue.isPhoneNumber)
    {
      return 'Invalid phone number';
    }
    return ""; // No errors
  } on Exception catch (e)
  {
    return e.toString();
  }
}
