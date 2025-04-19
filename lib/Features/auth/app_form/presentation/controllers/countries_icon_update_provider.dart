import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/services/database/shared_preference/app_database.dart';
import '../../../../../core/services/database/static/app_form_data/app_countries_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'countries_icon_update_provider.g.dart';

@riverpod
class CountryController extends _$CountryController {
  @override
  int? build() {
    _loadSavedCountryIndex();
    return 0;
  }

  Future<void> _loadSavedCountryIndex() async {
    try {
      final savedIndex = await UserPreferences.instance.getCountryIndex();
      state = savedIndex;
    } catch (e) {
      state = 0;
    }
  }

  void setSelectedIndex(int index) {
    try {
      state = index;
      UserPreferences.instance.saveCountryIndex(index);
    } catch (e) {
      state = 0;
    }
  }

  int getSelectedIndex() {
    return state ?? 0;
  }
}

String getSelectedCountryImage(WidgetRef ref, BuildContext context) {
  final selectedIndex = ref.watch(countryControllerProvider) ?? 0;
  final selectedCountriesList = CountryUtils.getRoundedCountryImage();

  if (selectedIndex < selectedCountriesList.length) {
    return selectedCountriesList[selectedIndex];
  }

  return AppAssets.iconsPNG.countryPNG;
}

String getSelectedCountryName(WidgetRef ref, BuildContext context) {
  final selectedIndex = ref.watch(countryControllerProvider) ?? 0;
  final countries = CountryUtils.getCountryImageAndName(context);

  if (selectedIndex < countries.length) {
    return countries[selectedIndex][1];
  }

  return AppLocalizations.of(context).country;
}
