import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/Core/constants/app_styles.dart';
import 'package:test_app/config/themes/font_system/app_font_weight.dart';
import 'package:test_app/config/themes/font_system/app_sizes.dart';
import 'package:test_app/core/constants/app_strings.dart';
import 'package:test_app/core/widgets/app_appbar.dart';

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
            ],
          ),
        ],
      ),
      
      backgroundColor: AppColors.kWhite,
      body: Column(
        children:
        [
          AppSizes.size46.verticalSpace,
      
          Text(AppStrings.verificationCode, style: AppStyles.textStyle20(textColor: AppColors.korLoginWithColor,),),
          
          AppSizes.size13.verticalSpace,
          
          Text(AppStrings.pleaseEnter5DigitalCodeSendTo, style: AppStyles.textStyle16(textColor: AppColors.kSecondaryText,),),
          
          AppSizes.size7.verticalSpace,
          
          Text(AppStrings.appgmailcom, style: AppStyles.textStyle16(textColor: AppColors.kSecondaryText,),),
      
          AppSizes.size46.verticalSpace,
        ],
      ),
    );
  }
}