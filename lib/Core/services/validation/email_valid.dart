import 'package:flutter/material.dart';
import 'package:test_app/core/extensions/string.dart';

import '../../../config/l10n/generated/app_localizations.dart';

String emailValidation(String? value, BuildContext context)
{
  try
  {
    if (value == null || value.isEmpty)
    {
      return AppLocalizations.of(context).emailIsRequired;
    }
    if (!value.isEmail)
    {
      return AppLocalizations.of(context).invalidEmail;
    }
    return ""; // No errors
  } on Exception catch (e)
  {
    return e.toString();
  }
}
