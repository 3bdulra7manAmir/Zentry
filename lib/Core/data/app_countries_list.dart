import 'package:flutter/material.dart';
import '../../config/l10n/generated/app_localizations.dart';
import '../constants/app_images.dart';


List<List<String>> getCountriesList(BuildContext context)
{
  return
  [
    [AppAssets.iconsPNG.egFlagPNG, AppLocalizations.of(context).egypt],
    [AppAssets.iconsPNG.saFlagPNG, AppLocalizations.of(context).saudiArabia],
    [AppAssets.iconsPNG.uaeFlagPNG, AppLocalizations.of(context).unitedArabEmirates],
    [AppAssets.iconsPNG.kuwaitFlagPNG, AppLocalizations.of(context).kuwait],
    [AppAssets.iconsPNG.moroccoFlagPNG, AppLocalizations.of(context).morocco],
    [AppAssets.iconsPNG.syriaFlagPNG, AppLocalizations.of(context).syrianArab],
    [AppAssets.iconsPNG.egFlagPNG, AppLocalizations.of(context).egypt],
  ];
}
