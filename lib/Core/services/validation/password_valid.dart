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
      return AppLocalizations.of(context).passwordLength8Character;
    }
    if (!password.passwordHasUpperCase)
    {
      return AppLocalizations.of(context).passwordOneUpperCase;
    }
    if (!password.passwordHasLowerCase)
    {
      return AppLocalizations.of(context).passwordOneLowerCase;
    }
    if (!password.passwordHasDigit)
    {
      return AppLocalizations.of(context).passwordOneNumber;
    }
    if (!password.passwordHasSpecialChar)
    {
      return AppLocalizations.of(context).passwordOneSpecialCharacter;
    }

    if (!password.hasValidPassword)
    {
      return AppLocalizations.of(context).invalidPassword;
    }

    return "";
  }
  
  catch (e)
  {
    return "${AppLocalizations.of(context).validateFailurPassword} ${e.toString()}";
  }
}
