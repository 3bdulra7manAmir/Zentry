import 'package:flutter/material.dart';
import 'package:test_app/core/extensions/string.dart';

import '../../../config/l10n/generated/app_localizations.dart';

String phoneNumberValidation(String? value, BuildContext context)
{
  try
  {
    final cleanedValue = value?.convertNumbers;
    if (cleanedValue == null || cleanedValue.isEmpty)
    {
      return AppLocalizations.of(context).phoneNumberIsRequired;
    }
    if (!cleanedValue.isPhoneNumber)
    {
      return AppLocalizations.of(context).invalidPhoneNumber;
    }
    return ""; // No errors
  } on Exception catch (e)
  {
    return e.toString();
  }
}
