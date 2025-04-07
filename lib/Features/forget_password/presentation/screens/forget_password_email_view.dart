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
import '../../../auth/presentation/widgets/numeric_keyboard.dart';


class ForgetPasswordWithEmailView extends StatelessWidget
{
  const ForgetPasswordWithEmailView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(barTitle: AppStrings.resetPassword,),
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
        
            AppSizes.size48.verticalSpace,
        
            Container(
              alignment: Alignment.center,
              margin: AppPadding.kFormPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(AppStrings.emailAddress, style: AppStyles.textStyle12(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kTertiaryText,)),
        
                  AppSizes.size8.verticalSpace,
                  
                  const CustomTextFormField(fieldText: AppStrings.emailAddress,),
        
                  AppSizes.size27.verticalSpace,
        
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
        
                  CustomButton(buttonText: AppStrings.verify, buttonTextStyle: AppStyles.textStyle22()),
                ],
              ),
            ),
            
            AppSizes.size60.verticalSpace, //104
            //Spacer(),
        
            const NumericKeyboard(),
            
            AppSizes.size20.verticalSpace,
          ],
        ),
      ),
    );
  }
}