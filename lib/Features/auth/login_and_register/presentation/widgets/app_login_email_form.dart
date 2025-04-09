import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Core/constants/app_borders.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_social_button.dart';
import '../../../../../core/widgets/app_form_container.dart';


class LoginFormWithEmail extends StatelessWidget
{
  const LoginFormWithEmail({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.kAppFormPadding,
      width: double.infinity,
      color: AppColors.color.kWhite,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            AppSizes.size13.verticalSpace,
            
            Row(
              children:
              [
                Text(AppLocalizations.of(context).email, style: AppStyles.textStyle12(textColor: AppColors.color.kTertiaryText,),),
                const Spacer(),

                Text(AppLocalizations.of(context).or, style: AppStyles.textStyle12(textColor: AppColors.color.kSecondary,),),
                
                AppSizes.size4.horizontalSpace,

                Text(AppLocalizations.of(context).phone, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textDecoration: TextDecoration.underline),),
              ],
            ),
      
            AppSizes.size8.verticalSpace,
      
            CustomContainer(fieldText: AppLocalizations.of(context).enterEmaill),
      
            AppSizes.size24.verticalSpace,
      
            Text(AppLocalizations.of(context).password, style: AppStyles.textStyle12(textColor: AppColors.color.kTertiaryText,),),
      
            AppSizes.size8.verticalSpace,
      
            CustomContainer(fieldText: AppLocalizations.of(context).password, fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.corssedEyePNG),),
      
            AppSizes.size16.verticalSpace,
      
            Row(
              children:
              [
                Checkbox(value: false, onChanged: (value) {}, side: BorderSide(width: AppBorderWidths.width2, color: AppColors.color.kTextFormFieldBorder,),),

                Text(AppLocalizations.of(context).remember, style: AppStyles.textStyle12(textColor: AppColors.color.kRemember),),

                const Spacer(),

                Text(AppLocalizations.of(context).forgetPassword, style: AppStyles.textStyle12(
                  textColor: AppColors.color.kForgetPassword,
                  textDecoration: TextDecoration.underline,
                  textDecorationColor: AppColors.color.kForgetPasswordUnderLine,
                  ),
                ),
              ],
            ),
      
            AppSizes.size16.verticalSpace,
      
            CustomButton(buttonText: AppLocalizations.of(context).login),
      
            AppSizes.size20.verticalSpace,
      
            Align(
              alignment: Alignment.center,
              child: Text(AppLocalizations.of(context).orLoginWith, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textColor: AppColors.color.korLoginWithColor),) // textAlign: TextAlign.center, //Not Working Due to => crossAxisAlignment: CrossAxisAlignment.start,
            ),
      
            AppSizes.size20.verticalSpace,
      
            Column(
              children:
              [
                Row(
                  children:
                  [
                    Expanded(
                      child: CustomSocialButton(buttonText: AppLocalizations.of(context).facebook, platformLogo: AppAssets.iconsPNG.faceBookPNG,
                      buttonBackgroundColor: AppColors.color.kWhite, buttonTextStyle: AppStyles.textStyle12(textColor: AppColors.color.kTertiaryText)),
                    ),
                
                    AppSizes.size12.horizontalSpace,
                
                    Expanded(
                      child: CustomSocialButton(buttonText: AppLocalizations.of(context).google, platformLogo: AppAssets.iconsPNG.googlePNG,
                      buttonBackgroundColor: AppColors.color.kWhite,buttonTextStyle: AppStyles.textStyle12(textColor: AppColors.color.kTertiaryText),
                      spaceAmount: AppSizes.size30,),
                    ),
                  ],
                ),
      
                AppSizes.size12.verticalSpace,
      
                CustomSocialButton(buttonText: AppLocalizations.of(context).apple,  platformLogo: AppAssets.iconsPNG.applePNG, buttonWidth: 174.w,
                isLogoSpace: false, buttonBackgroundColor: AppColors.color.kWhite, buttonTextStyle: AppStyles.textStyle12(textColor: AppColors.color.kTertiaryText),
                spaceAmount: AppSizes.size30,),
              ],
            ),

            AppSizes.size12.verticalSpace,
          ],
        ),
      ),
    );
  }
}