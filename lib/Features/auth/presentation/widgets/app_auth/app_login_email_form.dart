import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/Core/constants/app_padding.dart';
import 'package:test_app/Core/constants/app_styles.dart';
import 'package:test_app/Core/widgets/app_text_form_field.dart';
import 'package:test_app/config/themes/font_system/app_font_weight.dart';
import 'package:test_app/config/themes/font_system/app_sizes.dart';
import 'package:test_app/core/constants/app_images.dart';
import 'package:test_app/core/constants/app_strings.dart';
import 'package:test_app/core/widgets/app_button.dart';

class LoginFormWithEmail extends StatelessWidget
{
  const LoginFormWithEmail({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.kFormPadding,
      width: double.infinity,
      color: AppColors.kWhite,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            AppSizes.size13.verticalSpace,
            
            Row(
              children:
              [
                Text(AppStrings.email, style: AppStyles.textStyle12(textColor: AppColors.kTertiaryText,),),
                const Spacer(),

                Text(AppStrings.or, style: AppStyles.textStyle12(textColor: AppColors.kSecondaryText,),),
                
                AppSizes.size4.horizontalSpace,

                Text(AppStrings.phone, style: AppStyles.textStyle12(fontWeight: AppFontWeights.w700, textDecoration: TextDecoration.underline),),
              ],
            ),
      
            AppSizes.size8.verticalSpace,
      
            CustomTextFormField(fieldText: AppStrings.enterEmaill),
      
            AppSizes.size24.verticalSpace,
      
            Text(AppStrings.password, style: AppStyles.textStyle12(textColor: AppColors.kTertiaryText,),),
      
            AppSizes.size8.verticalSpace,
      
            CustomTextFormField(fieldText: AppStrings.password, fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.corssedEyePNG),),
      
            AppSizes.size16.verticalSpace,
      
            Row(
              children:
              [
                Checkbox(value: false, onChanged: (value) {}, side: BorderSide(width: 2.w, color: AppColors.kTextFormFieldBorder,),),

                Text(AppStrings.remember, style: AppStyles.textStyle12(textColor: AppColors.kRememberColor),),

                const Spacer(),

                Text(AppStrings.forgetPassword, style: AppStyles.textStyle12(textColor: AppColors.kForgetPasswordColor, textDecoration: TextDecoration.underline, ),),
              ],
            ),
      
            AppSizes.size16.verticalSpace,
      
            const CustomButton(buttonText: AppStrings.login, isSocialButton: false,),
      
            AppSizes.size20.verticalSpace,
      
            Align(
              alignment: Alignment.center,
              child: Text(AppStrings.orLoginWith, style: AppStyles.textStyle12(fontWeight: AppFontWeights.w700, textColor: AppColors.korLoginWithColor),) // textAlign: TextAlign.center, //Not Working Due to => crossAxisAlignment: CrossAxisAlignment.start,
            ),
      
            AppSizes.size20.verticalSpace,
      
            Column(
              children:
              [
                Row(
                  children:
                  [
                    Expanded(
                      child: CustomButton(buttonText: AppStrings.facebook, isSocialButton: true, platformLogo: AppAssets.iconsPNG.faceBookPNG,
                      buttonBackgroundColor: AppColors.kWhite, buttonTextStyle: AppStyles.textStyle12(textColor: AppColors.kTertiaryText)),
                    ),
                
                    AppSizes.size12.horizontalSpace,
                
                    Expanded(
                      child: CustomButton(buttonText: AppStrings.google, isSocialButton: true, platformLogo: AppAssets.iconsPNG.googlePNG,
                      buttonBackgroundColor: AppColors.kWhite,buttonTextStyle: AppStyles.textStyle12(textColor: AppColors.kTertiaryText),
                      spaceAmount: 30,),
                    ),
                  ],
                ),
      
                AppSizes.size12.verticalSpace,
      
                CustomButton(buttonText: AppStrings.apple, isSocialButton: true, platformLogo: AppAssets.iconsPNG.applePNG, buttonWidth: 174.w,
                isLogoSpace: false, buttonBackgroundColor: AppColors.kWhite, buttonTextStyle: AppStyles.textStyle12(textColor: AppColors.kTertiaryText),
                spaceAmount: 30,),
              ],
            ),

            AppSizes.size12.verticalSpace,
          ],
        ),
      ),
    );
  }
}