import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/constants/app_borders.dart';
import '../../../../../Core/constants/app_images.dart';
import '../../../../../Core/constants/app_padding.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../core/helpers/app_providers_accessor.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_form_container.dart';
import 'countries_list_dialog.dart';
import 'language_list_dialog.dart';
import 'themes_list_dialog.dart';


class AppForm extends ConsumerWidget
{
  const AppForm({super.key});

@override
Widget build(BuildContext context, WidgetRef ref)
{
  final provider = AppProvidersProvider(ref, context);
  final arrow = provider.locale.selectedLanguageIndex == 0 ? AppAssets.iconsPNG.rightWhiteArrowPNG : AppAssets.iconsPNG.leftWhiteArrowPNG;
  final GlobalKey<FormState> appFormKey = GlobalKey<FormState>();

  return Container(
    padding: AppPadding.kAppFormPadding,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: AppBorders.formBorder,
      color: Theme.of(context).cardColor,
    ),
    child: Form(
      key: appFormKey,
      child: Column(
        children:
        [
          AppSizes.size12.verticalSpace,
          Container(
            width: 73.w,
            height: 3.h,
            decoration: BoxDecoration(color: AppColors.color.kSecondarySemiGreyText, borderRadius: AppBorders.dividerBorder,),
          ),
          AppSizes.size24.verticalSpace,
          Text(AppLocalizations.of(context).welcomeBack, style: AppStyles.textStyle18(textColor: AppColors.color.kPrimaryGreyText,),),
          AppSizes.size28.verticalSpace,
          GestureDetector(
            onTap: () => showLanguageBottomSheet(context),
            child: CustomContainer(
              fieldPrefixIcon: Image.asset(provider.languageFlag),
              fieldText: provider.languageLabel,
              fieldsuffixIcon: Image.asset(arrow),
            ),
          ),
          AppSizes.size16.verticalSpace,
          GestureDetector(
            onTap: () => showCountriesBottomSheet(context),
            child: CustomContainer(
              fieldPrefixIcon: Image.asset(provider.countryFlag),
              fieldText: provider.countryLabel,
              fieldsuffixIcon: Image.asset(arrow),
            ),
          ),
          AppSizes.size16.verticalSpace,
          GestureDetector(
            onTap: () => showThemesBottomSheet(context),
            child: CustomContainer(
              fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.modePNG),
              fieldText: provider.themeLabel,
              fieldsuffixIcon: Image.asset(arrow),
            ),
          ),
          AppSizes.size27.verticalSpace,
          CustomButton(
            buttonText: AppLocalizations.of(context).login,
            buttonOnPressed: () => AppRouter.router.pushReplacementNamed(AppRoutes.kAuthTabs),
          ),
          AppSizes.size16.verticalSpace,
          CustomButton(
            buttonText: AppLocalizations.of(context).signUp,
            buttonTextStyle: AppStyles.textStyle14(textColor: AppColors.color.kPrimaryBlue,),
            buttonBackgroundColor: AppColors.color.kSecondaryWhite,
            buttonBorderColor: AppColors.color.kPrimaryBlue,
            //buttonOnPressed: () => AppRouter.router.pushNamed(AppRoutes.kTestView),
          ),
        ],
      ),
    ),
  );
}
}