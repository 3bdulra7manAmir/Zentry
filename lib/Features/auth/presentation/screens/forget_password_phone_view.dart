import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Core/constants/app_images.dart';
import 'package:test_app/Core/constants/app_padding.dart';
import 'package:test_app/Core/widgets/app_text_form_field.dart';
import 'package:test_app/config/themes/app_colors.dart';
import 'package:test_app/config/themes/font_system/app_font_weight.dart';
import 'package:test_app/config/themes/app_sizes.dart';
import 'package:test_app/core/constants/app_strings.dart';
import 'package:test_app/core/constants/app_styles.dart';
import 'package:test_app/core/widgets/app_button.dart';
import 'package:test_app/core/widgets/app_appbar.dart';
import 'package:test_app/features/auth/presentation/widgets/numeric_keyboard.dart';

class ForgetPasswordWithPhoneView extends StatelessWidget
{
  const ForgetPasswordWithPhoneView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(barTitle: AppStrings.resetPassword,),
      //backgroundColor: AppColors.kWhite,
      body: SingleChildScrollView(
        child: Column(
          children:
          [
            AppSizes.size46.verticalSpace,
        
            Text(AppStrings.forgotPassword, style: AppStyles.textStyle20(textColor: AppColors.korLoginWithColor,),),
            
            AppSizes.size13.verticalSpace,
            
            Text(AppStrings.enterPhoneNumberAssociated, style: AppStyles.textStyle16(textColor: AppColors.kSecondaryText,),),
            
            AppSizes.size7.verticalSpace,
            
            Text(AppStrings.withYourAccount, style: AppStyles.textStyle14(textColor: AppColors.kSecondaryText, fontWeight: AppFontWeights.w400),),
        
            AppSizes.size46.verticalSpace,
        
            Container(
              alignment: Alignment.center,
              margin: AppPadding.kFormPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(AppStrings.phoneNumber, style: AppStyles.textStyle13(fontWeight: AppFontWeights.w500, textColor: AppColors.kQuaternaryText,)),
        
                  AppSizes.size9.verticalSpace,
                  
                  CustomTextFormField(fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.egyptFlagPNG), fieldText: AppStrings.countryCode,),
        
                  AppSizes.size28.verticalSpace,
        
                  Row(
                    children:
                    [
                      Text(AppStrings.dontHavePhone, style: AppStyles.textStyle14(fontWeight: AppFontWeights.w500, textColor: AppColors.kQuaternaryText),),
        
                      AppSizes.size14.horizontalSpace,
        
                      Text(AppStrings.tryAnotherWay, style: AppStyles.textStyle14(fontWeight: AppFontWeights.w500,
                          textColor: AppColors.kForgetPasswordColor, textDecoration: TextDecoration.underline,
                          textDecorationColor: AppColors.kForgetPasswordColor,
                        ),
                      ),
                    ],
                  ),
        
                  AppSizes.size24.verticalSpace,
        
                  const CustomButton(buttonText: "Verify", isSocialButton: false),
                ],
              ),
            ),

            AppSizes.size60.verticalSpace,
            //Spacer(),
        
            const NumericKeyboard(),
            
            AppSizes.size14.verticalSpace,
          ],
        ),
      ),
    );
  }
}