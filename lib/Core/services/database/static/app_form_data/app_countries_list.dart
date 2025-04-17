import 'package:flutter/material.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../constants/app_images.dart';

class CountryUtils
{
  CountryUtils._();

  static List<List<String>> getCountryImageAndName(BuildContext context)
  {
    final locale = AppLocalizations.of(context);
    return
    [
      [AppAssets.iconsPNG.egFlagPNG, locale.egypt],
      [AppAssets.iconsPNG.saFlagPNG, locale.saudiArabia],
      [AppAssets.iconsPNG.uaeFlagPNG, locale.unitedArabEmirates],
      [AppAssets.iconsPNG.kuwaitFlagPNG, locale.kuwait],
      [AppAssets.iconsPNG.moroccoFlagPNG, locale.morocco],
      [AppAssets.iconsPNG.syriaFlagPNG, locale.syrianArab],
    ];
  }

  static List<String> getRoundedCountryImage()
  {
    return
    [
      AppAssets.iconsPNG.egFlagSelectedPNG,
      AppAssets.iconsPNG.saFlagSelectedPNG,
      AppAssets.iconsPNG.uaeFlagSelectedPNG,
      AppAssets.iconsPNG.kuwaitFlagSelectedPNG,
      AppAssets.iconsPNG.moroccoFlagSelectedPNG,
      AppAssets.iconsPNG.syriaFlagSelectedPNG,
    ];
  }
}
