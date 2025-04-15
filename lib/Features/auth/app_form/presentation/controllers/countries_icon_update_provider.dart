import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/services/database/static/form_data/app_countries_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'countries_icon_update_provider.g.dart';

@riverpod
class CountryController extends _$CountryController
{
  @override
  int? build()
  {
    return null;
  }

  void setSelectedIndex(int index)
  {
    try
    {
      state = index;
    }

    catch (e, stack)
    {
      //debugPrint('[setSelectedIndex] Error: $e');
      //debugPrint('[setSelectedIndex] Stack trace: $stack');
    }
  }
}


String getSelectedCountryImage(WidgetRef ref, BuildContext context)
{
  final selectedIndex = ref.watch(countryControllerProvider);
  final selectedCountriesList = CountryUtils.getRoundedCountryImage();

  if (selectedIndex != null && selectedIndex < selectedCountriesList.length)
  {
    return selectedCountriesList[selectedIndex];
  }

  return AppAssets.iconsPNG.countryPNG; // fallback flag
}

String getSelectedCountryName(WidgetRef ref, BuildContext context)
{
  final selectedIndex = ref.watch(countryControllerProvider);
  final countries = CountryUtils.getCountryImageAndName(context);

  if (selectedIndex != null && selectedIndex < countries.length)
  {
    return countries[selectedIndex][1]; // [flag, name]
  }

  return AppLocalizations.of(context).country; // fallback name
}
