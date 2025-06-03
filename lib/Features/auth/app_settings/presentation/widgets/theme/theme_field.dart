import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../../../../../Core/constants/app_images.dart';
import '../../../../../../core/helpers/app_providers.dart';
import '../../../../../../core/utils/app_reference.dart';
import '../../../../../../core/widgets/app_container.dart';
import 'themes_bottom_modal_sheet.dart';

class ThemeField extends ConsumerWidget
{
  const ThemeField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return GestureDetector(
      onTap: () => showThemesBottomSheet(context),
      child: CustomContainer(
        fieldPrefixIcon: Image.asset(
          provider.currentThemeMode == Brightness.dark
            ? AppAssets.iconsPNG.formDarkMode
            : AppAssets.iconsPNG.formLightMode,
        ),
        fieldText: provider.currentThemeLabel,
        fieldsuffixIcon: AppImages.arrowImage(context, ref),
      ),
    );
  }
}