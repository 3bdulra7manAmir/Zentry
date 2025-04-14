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

    if (!value.contains('@'))
    {
      return "Email must contain '@' symbol.";
    }

    if (!value.emailEndsWithDomain)
    {
      return "Email must end with a valid domain (e.g., .com, .org).";
    }

    if (!value.isEmail)
    {
      return AppLocalizations.of(context).invalidEmail;
    }

    return ""; // No errors
  }
  
  catch (e)
  {
    return "Error validating email: ${e.toString()}";
  }
}

