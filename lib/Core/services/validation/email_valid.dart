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
      return AppLocalizations.of(context).invalidEmailSymbol;
    }

    if (!value.emailEndsWithDomain)
    {
      return AppLocalizations.of(context).invalidEmailDomain;
    }

    if (!value.isEmail)
    {
      return AppLocalizations.of(context).enterEmaill;
    }

    return "";
  }
  
  catch (e)
  {
    return "${AppLocalizations.of(context).validateFailurEmail} ${e.toString()}";
  }
}

