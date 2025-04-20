import 'package:flutter/material.dart';
import '../../../../config/l10n/generated/app_localizations.dart';

List<String> getThemesList(BuildContext context) {
  return [
    AppLocalizations.of(context).dark,
    AppLocalizations.of(context).light,
  ];
}
