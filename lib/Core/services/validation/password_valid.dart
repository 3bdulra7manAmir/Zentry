import 'package:flutter/material.dart';
import 'package:test_app/core/extensions/string.dart';

import '../../../config/l10n/generated/app_localizations.dart';

String passwordValidation(String? value, BuildContext context)
{
  try {
    final password = value ?? "";

    if (password.isEmpty)
    {
      return AppLocalizations.of(context).passwordIsRequired;
    }

    if (!password.passwordIsLongEnough)
    {
      return "Password must be at least 8 characters long.";
    }
    if (!password.passwordHasUpperCase)
    {
      return "Password must contain at least one uppercase letter.";
    }
    if (!password.passwordHasLowerCase)
    {
      return "Password must contain at least one lowercase letter.";
    }
    if (!password.passwordHasDigit)
    {
      return "Password must contain at least one number.";
    }
    if (!password.passwordHasSpecialChar)
    {
      return "Password must contain at least one special character.";
    }

    if (!password.hasValidPassword)
    {
      return AppLocalizations.of(context).invalidPassword;
    }

    return "";
  }
  
  catch (e)
  {
    return "Error validating password: ${e.toString()}";
  }
}
