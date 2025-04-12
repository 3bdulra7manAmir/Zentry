extension GetStringUtils on String?
{
  bool get isEmail => RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
    .hasMatch(this ?? '');

  bool get hasValidPassword => RegExp(r'^\p{L}+$').hasMatch(this ?? '');

  bool get isPhoneNumber
  {
    if (this == null || this!.length > 16 || this!.length < 7) return false;
    return RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
        .hasMatch(this ?? '');
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
