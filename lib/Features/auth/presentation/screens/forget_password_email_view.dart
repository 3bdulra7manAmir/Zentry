import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/themes/app_colors/app_colors.dart';
import '../../../../config/themes/app_sizes.dart';
import '../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/app_appbar.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../widgets/numeric_keyboard.dart';



class ForgetPasswordWithEmailView extends StatelessWidget
{
  const ForgetPasswordWithEmailView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(barTitle: AppStrings.resetPassword,),
      //backgroundColor: AppColors.color.kWhite,
      body: SingleChildScrollView(
        child: Column(
          children:
          [
            AppSizes.size46.verticalSpace,
        
            Text(AppStrings.forgotPassword, style: AppStyles.textStyle20(textColor: AppColors.color.korLoginWithColor,)),
            
            AppSizes.size13.verticalSpace,
            
            Text(AppStrings.enterPhoneNumberAssociated, style: AppStyles.textStyle16(textColor: AppColors.color.kSecondary,)),
            
            AppSizes.size7.verticalSpace,
            
            Text(AppStrings.withYourAccount, style: AppStyles.textStyle14(textColor: AppColors.color.kSecondary, fontWeight: AppFontWeights.regularWeight),),
        
            AppSizes.size46.verticalSpace,
        
            Container(
              alignment: Alignment.center,
              margin: AppPadding.kFormPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(AppStrings.emailAddress, style: AppStyles.textStyle13(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kQuaternaryText,)),
        
                  AppSizes.size9.verticalSpace,
                  
                  const CustomTextFormField(fieldText: AppStrings.emailAddress,),
        
                  AppSizes.size28.verticalSpace,
        
                  Row(
                    children:
                    [
                      Text(AppStrings.dontHaveEmail, style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kQuaternaryText),),
        
                      AppSizes.size14.horizontalSpace,
        
                      Text(AppStrings.tryAnotherWay, style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight,
                          textColor: AppColors.color.kForgetPassword, textDecoration: TextDecoration.underline,
                          textDecorationColor: AppColors.color.kForgetPassword,
                        ),
                      ),
                    ],
                  ),
        
                  AppSizes.size24.verticalSpace,
        
                  const CustomButton(buttonText: "Verify"),
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