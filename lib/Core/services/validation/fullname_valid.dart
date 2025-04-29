import 'package:flutter/material.dart';
import 'package:test_app/core/extensions/string.dart';
import '../../../config/l10n/generated/app_localizations.dart';

String fullNameValidation(String? value, BuildContext context)
{
  try
  {
    if (value == null || value.trim().isEmpty) {
      return AppLocalizations.of(context).fullNameIsRequired;
    }

    if (!value.isFullName)
    {
      return AppLocalizations.of(context).invalidFullName;
    }

    return "";
  }

  catch (e)
  {
    return "${AppLocalizations.of(context).validateFailureFullName} ${e.toString()}";
  }
}
