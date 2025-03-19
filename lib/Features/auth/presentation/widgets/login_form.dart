import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/Core/constants/app_padding.dart';
import 'package:test_app/Core/constants/app_styles.dart';
import 'package:test_app/Core/widgets/app_text_form_field.dart';
import 'package:test_app/config/themes/font_system/sizes_manager.dart';
import 'package:test_app/core/constants/app_images.dart';
import 'package:test_app/core/constants/app_strings.dart';
import 'package:test_app/core/widgets/app_button.dart';

class LoginForm extends StatelessWidget
{
  const LoginForm({super.key});

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
            Sizes.size28.verticalSpace,
            
            const Row(
              children:
              [
                Text(AppStrings.phoneNumber),
                Spacer(),
                Text(AppStrings.or),
                Text(AppStrings.email),
              ],
            ),
      
            Sizes.size8.verticalSpace,
      
            CustomTextFormField(fieldPrefixIcon: AppAssets.iconsPNG.egyptFlagPNG, fieldText: AppStrings.countryCode),
      
            Sizes.size24.verticalSpace,
      
            const Text(AppStrings.password),
      
            Sizes.size8.verticalSpace,
      
            CustomTextFormField(fieldText: AppStrings.password, fieldsuffixIcon: AppAssets.iconsPNG.corssedEyePNG,),
      
            Sizes.size16.verticalSpace,
      
            Row(
              children:
              [
                Checkbox(value: false, onChanged: (value) {}, side: BorderSide(width: 2.w, color: AppColors.kTextFormFieldBorder,),),
      
                Sizes.size8.horizontalSpace,
      
                const Text(AppStrings.remember),
                const Spacer(),
                const Text(AppStrings.forgetPassword, style: TextStyle(decoration: TextDecoration.underline),),
              ],
            ),
      
            Sizes.size16.verticalSpace,
      
            const CustomButton(buttonText: AppStrings.login, isSocialButton: false,),
      
            Sizes.size20.verticalSpace,
      
            const Align(
              alignment: Alignment.center,
              child: Text(AppStrings.orLoginWith,) // textAlign: TextAlign.center, //Not Working Due to => crossAxisAlignment: CrossAxisAlignment.start,
            ),
      
            Sizes.size20.verticalSpace,
      
            Column(
              children:
              [
                Row(
                  children:
                  [
                    Expanded(
                      child: CustomButton(buttonText: AppStrings.facebook, isSocialButton: true, platformLogo: AppAssets.iconsPNG.faceBookPNG,
                      buttonBackgroundColor: AppColors.kWhite, buttonTextStyle: AppStyles.textStyle14.copyWith(color: AppColors.kSecondaryText),),
                    ),
                
                    Sizes.size12.horizontalSpace,
                
                    Expanded(
                      child: CustomButton(buttonText: AppStrings.google, isSocialButton: true, platformLogo: AppAssets.iconsPNG.googlePNG,
                      buttonBackgroundColor: AppColors.kWhite, buttonTextStyle: AppStyles.textStyle14.copyWith(color: AppColors.kSecondaryText),),
                    ),
                  ],
                ),
      
                Sizes.size12.verticalSpace,
      
                CustomButton(buttonText: AppStrings.apple, isSocialButton: true, platformLogo: AppAssets.iconsPNG.applePNG, buttonWidth: 174.w,
                isLogoSpace: false,
                buttonBackgroundColor: AppColors.kWhite, buttonTextStyle: AppStyles.textStyle14.copyWith(color: AppColors.kSecondaryText),),
              ],
            ),

            Sizes.size20.verticalSpace,
          ],
        ),
      ),
    );
  }
}