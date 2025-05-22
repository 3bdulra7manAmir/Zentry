import 'package:flutter/material.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../constants/app_images.dart';

class CountryUtils
{
  CountryUtils._();

  static List<List<String>> getCountryImageAndName(BuildContext context)
  {
    final locale = AppLocalizations.of(context);
    return
    [
      [AppAssets.iconsPNG.countryEgypt, locale.egypt],
      [AppAssets.iconsPNG.countrySaudiArabia, locale.saudiArabia],
      [AppAssets.iconsPNG.countryUAE, locale.unitedArabEmirates],
      [AppAssets.iconsPNG.countryKuwait, locale.kuwait],
      [AppAssets.iconsPNG.countryUAE, locale.morocco],
      [AppAssets.iconsPNG.countrySyria, locale.syrianArab],
    ];
  }

  static List<String> getRoundedCountryImage()
  {
    return
    [
      AppAssets.iconsPNG.countryEgyptSelected,
      AppAssets.iconsPNG.countrySaudiArabiaSelected,
      AppAssets.iconsPNG.countryUAESelected,
      AppAssets.iconsPNG.countryKuwaitSelected,
      AppAssets.iconsPNG.countryMoroccoSelected,
      AppAssets.iconsPNG.countrySyriaSelected,
    ];
  }
}
