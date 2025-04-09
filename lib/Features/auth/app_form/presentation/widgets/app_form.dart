import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/constants/app_borders.dart';
import '../../../../../Core/constants/app_images.dart';
import '../../../../../Core/constants/app_padding.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_form_container.dart';
import 'countries_list_dialog.dart';
import 'language_list_dialog.dart';
import 'themes_list_dialog.dart';


class AppForm extends StatelessWidget
{
  const AppForm({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.kAppFormPadding,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: AppBorders.formBorder,
        color: Theme.of(context).cardColor,
      ),

      child: Column(
        children:
        [ 

          AppSizes.size12.verticalSpace,

          Container(
            width: 73.w,
            height: 3.h,
            decoration: BoxDecoration(
              color: AppColors.color.kSecondarySemiGreyText,
              borderRadius: AppBorders.dividerBorder,
            ),
          ),

          AppSizes.size24.verticalSpace,

          Text(AppLocalizations.of(context).welcomeBack, style: AppStyles.textStyle18(textColor: AppColors.color.kPrimaryGreyText),), 

          AppSizes.size28.verticalSpace,

          GestureDetector(
            onTap: () => showLanguageDialog(context),
            child: CustomContainer(fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.languagePNG), fieldText: AppLocalizations.of(context).language, fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.leftBlackArrowPNG),),
          ),

          AppSizes.size16.verticalSpace,

          GestureDetector(
            onTap: () => showCountiesDialog(context),
            child: CustomContainer(fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.countryPNG), fieldText: AppLocalizations.of(context).country, fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.leftBlackArrowPNG),)
          ),

          AppSizes.size16.verticalSpace,

          GestureDetector(
            onTap: () => showThemesDialog(context),
            child: CustomContainer(fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.modePNG), fieldText: AppLocalizations.of(context).mode, fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.leftBlackArrowPNG),)),

          AppSizes.size27.verticalSpace,

          CustomButton(buttonText: AppLocalizations.of(context).login,),

          AppSizes.size16.verticalSpace,

         CustomButton(buttonText: AppLocalizations.of(context).signUp,
         buttonTextStyle: AppStyles.textStyle14(textColor: AppColors.color.kPrimaryBlue),
         buttonBackgroundColor: AppColors.color.kSecondaryWhite,
         buttonBorderColor: AppColors.color.kPrimaryBlue,
         ),
        ],
      ),
    );
  }
}