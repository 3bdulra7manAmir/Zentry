import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/helpers/app_providers.dart';
import '../../../../../../core/helpers/app_reference.dart';
import '../../../../../../core/widgets/app_container.dart';
import '../country/countries_bottom_modal_sheet.dart';

class CountryField extends ConsumerWidget
{
  const CountryField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return GestureDetector(
      onTap: () => showCountriesBottomSheet(context),
      child: CustomContainer(
        fieldPrefixIcon: Image.asset(provider.selectedCountryFlag),
        fieldText: provider.selectedCountryLabel,
        fieldsuffixIcon: AppImages.arrowImage(context, ref),
      ),
    );
  }
}