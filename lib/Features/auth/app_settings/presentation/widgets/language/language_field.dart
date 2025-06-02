import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/helpers/app_providers.dart';
import '../../../../../../core/utils/app_reference.dart';
import '../../../../../../core/widgets/app_container.dart';
import '../country/countries_bottom_modal_sheet.dart';

class LanguageField extends ConsumerWidget
{
  const LanguageField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return GestureDetector(
      onTap: () => showCountriesBottomSheet(context),
      child: CustomContainer(
        fieldPrefixIcon: Image.asset(provider.countryFlag),
        fieldText: provider.countryLabel,
        fieldsuffixIcon: AppImages.arrowImage(context, ref),
      ),
    );
  }
}