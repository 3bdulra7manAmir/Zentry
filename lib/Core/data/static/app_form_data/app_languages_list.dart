import 'package:flutter/material.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../constants/app_images.dart';

List<List<dynamic>> getLanguagesList(BuildContext context)
{
  return
  [
    [
      AppAssets.iconsPNG.egFlagPNG,
      AppLocalizations.of(context).arabic,
      const Locale('ar'),
    ],
    [
      AppAssets.iconsPNG.unitedStatesFlagPNG,
      AppLocalizations.of(context).english,
      const Locale('en'),
    ],
  ];
}
