String phoneNumberValid(value)
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
    return ""; //IF NO ERRORS
  }
  on Exception catch (e)
  {
    return e.toString();
  }
}