import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/themes/app_colors/app_colors.dart';
import '../../../../config/themes/app_sizes.dart';
import '../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/app_appbar.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';


class RestPasswordView extends StatelessWidget
{
  const RestPasswordView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(barTitle: AppStrings.resetPassword,),
      //backgroundColor: AppColors.color.kWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
        [
          AppSizes.size35.verticalSpace,

          Image.asset(AppAssets.iconsPNG.securityLockPNG, alignment: Alignment.center,),

          AppSizes.size24.verticalSpace,

          Container(
            margin: AppPadding.kFormPadding,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text(AppStrings.newPassword, style: AppStyles.textStyle13(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kQuaternaryText),),

                AppSizes.size9.verticalSpace,

                CustomTextFormField(fieldText: AppStrings.password, fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.corssedEyePNG),),

                AppSizes.size24.verticalSpace,

                Text(AppStrings.confirmPassword, style: AppStyles.textStyle13(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kQuaternaryText),),

                AppSizes.size9.verticalSpace,

                CustomTextFormField(fieldText: AppStrings.confirmPassword, fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.corssedEyePNG),),

                AppSizes.size24.verticalSpace,

                const CustomButton(buttonText: "Rest Password", isSocialButton: false,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}