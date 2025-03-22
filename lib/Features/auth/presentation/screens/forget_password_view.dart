import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Core/constants/app_images.dart';
import 'package:test_app/Core/widgets/app_text_form_field.dart';
import 'package:test_app/config/themes/app_colors.dart';
import 'package:test_app/config/themes/font_system/app_sizes.dart';
import 'package:test_app/core/constants/app_strings.dart';
import 'package:test_app/core/constants/app_styles.dart';
import 'package:test_app/features/auth/presentation/widgets/app_appbar.dart';

class ForgetPasswordView extends StatelessWidget
{
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: AppStrings.resetPassword,),
      body: Column(
        children:
        [
          AppSizes.size46.verticalSpace,

          Text(AppStrings.forgotPassword, style: AppStyles.textStyle20(textColor: AppColors.korLoginWithColor,),),
          
          AppSizes.size13.verticalSpace,
          
          Text(AppStrings.enterPhoneNumberAssociated, style: AppStyles.textStyle16(textColor: AppColors.kSecondaryText,),),
          
          AppSizes.size7.verticalSpace,
          
          Text(AppStrings.withYourAccount, style: AppStyles.textStyle16(textColor: AppColors.kSecondaryText,),),

          AppSizes.size46.verticalSpace,

          Text(AppStrings.phoneNumber, style: AppStyles.textStyle13(textColor: AppColors.kQuaternaryText,), textAlign: TextAlign.start,),

          CustomTextFormField(fieldPrefixIcon: AppAssets.iconsPNG.egyptFlagPNG, fieldText: AppStrings.countryCode,),
        ],
      ),
    );
  }
}