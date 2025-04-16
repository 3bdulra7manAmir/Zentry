extension GetStringUtils on String?
{
  bool get isLanguage => this != null && RegExp(r'^(?!.*\b(English|Arabic|الانجليزية|العربية)\b)([a-zA-Z]+|[\u0600-\u06FF]+)$',
  caseSensitive: false,)
  .hasMatch(this!);

  bool get isCountry
  {
    final regex = RegExp(r'^(Egypt|Morocco|Kuwait|Syrian Arab|United Arab Emirates|Saudi Arabia (SA)|مصر|السعودية|المغرب|الكويت|سوريا|الامارات)$',
    caseSensitive: false,);
    return this != null && regex.hasMatch(this!);
  }

  bool get isMode => this != null && RegExp(r'^(?!.*\b(Light|Dark|فاتح|داكن)\b)([a-zA-Z]+|[\u0600-\u06FF]+)$',
  caseSensitive: false,)
  .hasMatch(this!);


  bool get isEmail => RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
    .hasMatch(this ?? '');
    
  bool get emailContainsAtSign => this != null && this!.contains('@');
  bool get emailEndsWithDomain => RegExp(r'\.[a-zA-Z]{2,}$').hasMatch(this ?? '');

  bool get hasValidPassword
  {
    if (this == null) return false;

    final value = this!;
    return RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>_\-+=/\\\[\]~`]).{8,}$')
        .hasMatch(value);
  }
  bool get passwordHasUpperCase => RegExp(r'[A-Z]').hasMatch(this ?? '');
  bool get passwordHasLowerCase => RegExp(r'[a-z]').hasMatch(this ?? '');
  bool get passwordHasDigit => RegExp(r'\d').hasMatch(this ?? '');
  bool get passwordHasSpecialChar => RegExp(r'[!@#$%^&*(),.?":{}|<>_\-+=/\\\[\]~`]').hasMatch(this ?? '');
  bool get passwordIsLongEnough => (this ?? '').length >= 8;



   bool get isEgyptianPhone
   {
    if (this == null) return false;
    return RegExp(r'^(?:\+20|0)?1[0125]\d{8}$').hasMatch(this!);
  }

  bool get isSaudiPhone
  {
    if (this == null) return false;
    return RegExp(r'^(?:\+966|0)?5\d{8}$').hasMatch(this!);
  }

  bool get isPhoneNumber
  {
    return isEgyptianPhone || isSaudiPhone;
  }

  String? get convertNumbers
  {
    const arToEn =
    {
      '٠': '0',
      '١': '1',
      '٢': '2',
      '٣': '3',
      '٤': '4',
      '٥': '5',
      '٦': '6',
      '٧': '7',
      '٨': '8',
      '٩': '9'
    };

    if (this != null)
    {
      if (this!.runes.any((r) => arToEn.containsKey(String.fromCharCode(r))))
      {
        return this!.split('').map((char) => arToEn[char] ?? char).join('');
      }
    }

    return this;
  }
}
