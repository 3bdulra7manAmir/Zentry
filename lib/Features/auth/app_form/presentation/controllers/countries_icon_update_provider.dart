import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../core/constants/app_images.dart';
import '../../data/form_data/app_countries_list.dart';
import '../../data/form_data/app_countries_selected.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'countries_icon_update_provider.g.dart';

@riverpod
class CountryController extends _$CountryController
{
  @override
  int? build()
  {
    //debugPrint('[CountryController] Initialized with null index');
    return null;
  }

  void setSelectedIndex(int index)
  {
    try
    {
      //debugPrint('[setSelectedIndex] Setting selected index to: $index');
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
  final selectedCountriesList = getSelectedCountriesList(context);

  if (selectedIndex != null && selectedIndex < selectedCountriesList.length)
  {
    //debugPrint('[getSelectedCountryImage] Selected index: $selectedIndex');
    return selectedCountriesList[selectedIndex];
  }

  //debugPrint('[getSelectedCountryImage] No valid index. Returning fallback.');
  return AppAssets.iconsPNG.countryPNG;
}

String getSelectedCountryName(WidgetRef ref, BuildContext context)
{
  final selectedIndex = ref.watch(countryControllerProvider);
  final selectedCountriesList = getCountriesList(context); // returns List<List<String>>

  if (selectedIndex != null && selectedIndex < selectedCountriesList.length)
  {
    return selectedCountriesList[selectedIndex][1]; // 0 = flag, 1 = name
  }

  return AppLocalizations.of(context).country; // fallback
}
