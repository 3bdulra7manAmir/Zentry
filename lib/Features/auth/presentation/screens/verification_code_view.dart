import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/Core/constants/app_images.dart';
import 'package:test_app/Core/constants/app_styles.dart';
import 'package:test_app/Core/widgets/app_button.dart';
import 'package:test_app/config/themes/font_system/app_font_weight.dart';
import 'package:test_app/config/themes/app_sizes.dart';

import 'package:test_app/core/constants/app_borders.dart';
import 'package:test_app/core/constants/app_padding.dart';
import 'package:test_app/core/constants/app_strings.dart';
import 'package:test_app/core/widgets/app_appbar.dart';
import 'package:test_app/features/auth/presentation/widgets/numeric_keyboard.dart';

class VerificationCodeView extends StatelessWidget
{
  const VerificationCodeView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: "Reset Password",
        barActions:
        [
          Row(
            children:
            [
              Text(AppStrings.verifyLater, style: AppStyles.textStyle12(fontWeight: AppFontWeights.w600, textColor: AppColors.kRememberColor),),
              AppSizes.size4.horizontalSpace,
              Image.asset(AppAssets.iconsPNG.leftBlackArrowPNG),
              AppSizes.size14.horizontalSpace,
            ],
          ),
        ],
      ),
      
      //backgroundColor: AppColors.kWhite,
      body: SingleChildScrollView(
        child: Column(
          children:
          [
            AppSizes.size46.verticalSpace,
        
            Text(AppStrings.verificationCode, style: AppStyles.textStyle20(textColor: AppColors.korLoginWithColor,),),
            
            AppSizes.size13.verticalSpace,
            
            Text(AppStrings.pleaseEnter5DigitalCodeSendTo, style: AppStyles.textStyle16(textColor: AppColors.kSecondaryText,),),
            
            AppSizes.size7.verticalSpace,
            
            Text(AppStrings.appgmailcom, style: AppStyles.textStyle14(textColor: AppColors.kSecondaryText, fontWeight: AppFontWeights.w400),),
        
            AppSizes.size51.verticalSpace,
        
            Container(
              margin: AppPadding.kFormPadding,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text("Enter your Code", style: AppStyles.textStyle13(fontWeight: AppFontWeights.w500, textColor: AppColors.kQuaternaryText),),
        
                  AppSizes.size10.verticalSpace,
        
                  OtpTextField(
                    numberOfFields: 5,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    fillColor: AppColors.kTextFormFieldFill,
                    filled: true,
                    borderColor: AppColors.kTextFormFieldBorder,
                    borderWidth: AppSizes.size1.w,
                    borderRadius: AppBorders.buttonBorder10,
                    fieldWidth: AppSizes.size51.w,
                    alignment: Alignment.center,
                    contentPadding: AppPadding.kZeroPadding,
                    keyboardType: TextInputType.number,
                    //fieldHeight: AppSizes.size46.h,
                    //margin: AppPadding.kFormPadding,
                  ),
        
                  AppSizes.size26.verticalSpace,
        
                  Row(
                    children:
                    [
                      Text("Don't Receiving a code?", style: AppStyles.textStyle14(fontWeight: AppFontWeights.w500, textColor: AppColors.kQuaternaryText),),
        
                      AppSizes.size6.horizontalSpace,
        
                      Text("Request phone call", style: AppStyles.textStyle14(fontWeight: AppFontWeights.w500,
                        textColor: AppColors.kVerificationUnderLink,
                        textDecoration: TextDecoration.underline,
                        textDecorationColor: AppColors.kVerificationUnderLink,
                        ),
                      ),
                    ],
                  ),
        
                  AppSizes.size24.verticalSpace,
        
                  CustomButton(buttonText: "Resend in 60s", isSocialButton: false, buttonBackgroundColor: AppColors.kPrimaryBlue,),
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