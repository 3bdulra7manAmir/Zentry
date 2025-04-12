import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_appbar.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_form_container.dart';


class RestPasswordView extends StatelessWidget
{
  const RestPasswordView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: AppLocalizations.of(context).resetPassword,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
        [
          AppSizes.size35.verticalSpace,

          Image.asset(AppAssets.iconsPNG.securityLockPNG, alignment: Alignment.center,),

          AppSizes.size24.verticalSpace,

          Container(
            margin: AppPadding.kAppFormPadding,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text(AppLocalizations.of(context).newPassword, style: AppStyles.textStyle13(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kSeptenarySemiGreyText),),

                AppSizes.size9.verticalSpace,

                CustomContainer(fieldText: AppLocalizations.of(context).password, fieldhintStyle: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kTertiarySemiGrey), fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.corssedEyePNG),),

                AppSizes.size24.verticalSpace,

                Text(AppLocalizations.of(context).confirmPassword, style: AppStyles.textStyle13(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kSeptenarySemiGreyText),),

                AppSizes.size9.verticalSpace,

                CustomContainer(fieldText: AppLocalizations.of(context).confirmPassword, fieldhintStyle: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kTertiarySemiGrey), fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.corssedEyePNG),),

                AppSizes.size24.verticalSpace,

                CustomButton(
                  buttonText: AppLocalizations.of(context).resetPassword,
                  buttonTextStyle: AppStyles.textStyle22(),
                  buttonOnPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}