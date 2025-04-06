import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/themes/app_colors/app_colors_.dart';
import '../../../../config/themes/app_sizes.dart';
import '../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/app_appbar.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../widgets/numeric_keyboard.dart';


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
            
            Text(AppStrings.enterPhoneNumberAssociated, style: AppStyles.textStyle16(textColor: AppColors.kSecondary,),),
            
            AppSizes.size7.verticalSpace,
            
            Text(AppStrings.withYourAccount, style: AppStyles.textStyle14(textColor: AppColors.kSecondary, fontWeight: AppFontWeights.regularWeight),),
        
            AppSizes.size46.verticalSpace,
        
            Container(
              alignment: Alignment.center,
              margin: AppPadding.kFormPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(AppStrings.phoneNumber, style: AppStyles.textStyle13(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.kQuaternaryText,)),
        
                  AppSizes.size9.verticalSpace,
                  
                  CustomTextFormField(fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.egyptFlagPNG), fieldText: AppStrings.countryCode,),
        
                  AppSizes.size28.verticalSpace,
        
                  Row(
                    children:
                    [
                      Text(AppStrings.dontHavePhone, style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.kQuaternaryText),),
        
                      AppSizes.size14.horizontalSpace,
        
                      Text(AppStrings.tryAnotherWay, style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight,
                          textColor: AppColors.kForgetPassword, textDecoration: TextDecoration.underline,
                          textDecorationColor: AppColors.kForgetPassword,
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