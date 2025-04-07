import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/constants/app_borders.dart';

import '../../../../../config/themes/app_colors/app_colors.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_social_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';


class LoginFormWithPhone extends StatelessWidget
{
  const LoginFormWithPhone({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.kFormPadding,
      width: double.infinity,
      color: Theme.of(context).cardColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            AppSizes.size28.verticalSpace,
            
            Row(
              children:
              [
                Text(AppStrings.phoneNumber, style: AppStyles.textStyle12(textColor: AppColors.color.kTertiaryText,),),
                
                const Spacer(),

                Text(AppStrings.or, style: AppStyles.textStyle12(textColor: AppColors.color.kSecondary,),),
                
                AppSizes.size4.horizontalSpace,

                Text(AppStrings.email, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textDecoration: TextDecoration.underline),),
              ],
            ),
      
            AppSizes.size8.verticalSpace,
      
            CustomTextFormField(fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.egyptFlagPNG), fieldText: AppStrings.countryCode),
      
            AppSizes.size24.verticalSpace,
      
            Text(AppStrings.password, style: AppStyles.textStyle12(textColor: AppColors.color.kTertiaryText,),),
      
            AppSizes.size8.verticalSpace,
      
            CustomTextFormField(fieldText: AppStrings.password, fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.corssedEyePNG),),
      
            AppSizes.size16.verticalSpace,
      
            Row(
              children:
              [
                Checkbox(value: false, onChanged: (value) {}, side: BorderSide(width: AppBorderWidths.width2, color: AppColors.color.kTextFormFieldBorder,),),

                Text(AppStrings.remember, style: AppStyles.textStyle12(textColor: AppColors.color.kRemember),),

                const Spacer(),

                Text(AppStrings.forgetPassword, style: AppStyles.textStyle12(textColor: AppColors.color.kForgetPassword, textDecoration: TextDecoration.underline, ),),
              ],
            ),
      
            AppSizes.size16.verticalSpace,
      
            const CustomButton(buttonText: AppStrings.login,),
      
            AppSizes.size20.verticalSpace,
      
            Align(
              alignment: Alignment.center,
              child: Text(AppStrings.orLoginWith, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textColor: AppColors.color.korLoginWithColor),)
            ),
      
            AppSizes.size20.verticalSpace,
      
            Column(
              children:
              [
                Row(
                  children:
                  [
                    Expanded(
                      child: CustomSocialButton(buttonText: AppStrings.facebook, platformLogo: AppAssets.iconsPNG.faceBookPNG,
                      buttonBackgroundColor: AppColors.color.kWhite, buttonTextStyle: AppStyles.textStyle12(textColor: AppColors.color.kTertiaryText),                  
                      ),
                    ),
                
                    AppSizes.size12.horizontalSpace,
                
                    Expanded(
                      child: CustomSocialButton(buttonText: AppStrings.google, platformLogo: AppAssets.iconsPNG.googlePNG,
                      buttonBackgroundColor: AppColors.color.kWhite,buttonTextStyle: AppStyles.textStyle12(textColor: AppColors.color.kTertiaryText),
                      ),
                    ),
                  ],
                ),
      
                AppSizes.size12.verticalSpace,
      
                CustomSocialButton(buttonText: AppStrings.apple, platformLogo: AppAssets.iconsPNG.applePNG, buttonWidth: 174.w,
                isLogoSpace: false, buttonBackgroundColor: AppColors.color.kWhite, buttonTextStyle: AppStyles.textStyle12(textColor: AppColors.color.kTertiaryText),
                ),
              ],
            ),

            AppSizes.size20.verticalSpace,
          ],
        ),
      ),
    );
  }
}