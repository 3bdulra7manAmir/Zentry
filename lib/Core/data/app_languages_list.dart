import 'package:flutter/material.dart';
import 'package:test_app/Core/constants/app_images.dart';

import '../../config/l10n/generated/app_localizations.dart';

List<List<String>> getLanguagesList(BuildContext context)
{
  return
  [
    [AppAssets.iconsPNG.egFlagPNG, AppLocalizations.of(context).arabic],
    [AppAssets.iconsPNG.saFlagPNG, AppLocalizations.of(context).arabic],
    [AppAssets.iconsPNG.uaeFlagPNG, AppLocalizations.of(context).arabic],
    [AppAssets.iconsPNG.kuwaitFlagPNG, AppLocalizations.of(context).arabic],
    [AppAssets.iconsPNG.moroccoFlagPNG, AppLocalizations.of(context).arabic],
    [AppAssets.iconsPNG.syriaFlagPNG, AppLocalizations.of(context).arabic],
  ];
}