import 'package:flutter/material.dart';
import 'package:test_app/Core/constants/app_images.dart';

import '../../config/l10n/generated/app_localizations.dart';

List<List<dynamic>> getLanguagesList(BuildContext context)
{
  return
  [
    [AppAssets.iconsPNG.egFlagPNG, AppLocalizations.of(context).arabic, const Locale('ar')],
    [AppAssets.iconsPNG.saFlagPNG, AppLocalizations.of(context).arabic, const Locale('ar')],
    [AppAssets.iconsPNG.uaeFlagPNG, AppLocalizations.of(context).arabic, const Locale('ar')],
    [AppAssets.iconsPNG.kuwaitFlagPNG, AppLocalizations.of(context).arabic, const Locale('ar')],
    [AppAssets.iconsPNG.moroccoFlagPNG, AppLocalizations.of(context).arabic, const Locale('ar')],
    [AppAssets.iconsPNG.syriaFlagPNG, AppLocalizations.of(context).arabic, const Locale('en')],
  ];
}
