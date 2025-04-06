import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/constants/app_borders.dart';
import '../../../../../Core/constants/app_images.dart';
import '../../../../../Core/constants/app_padding.dart';
import '../../../../../Core/widgets/app_text_form_field.dart';
import '../../../../../config/themes/app_colors/app_colors.dart';
import '../../../../../config/themes/app_sizes.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/widgets/app_button.dart';

import '../../../../../core/constants/app_styles.dart';

class AppForm extends StatelessWidget
{
  const AppForm({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.kFormPadding,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: AppBorders.formBorder,
        color: Theme.of(context).cardColor,
      ),

      //Full Form Column
      child: Column(
        children:
        [
          //Divider
          Container(
            margin: AppPadding.kDividerPadding,
            width: 73.w,
            height: 3.h,
            decoration: BoxDecoration(
              color: AppColors.color.kSecondary,
              borderRadius: AppBorders.dividerBorder,
            ),
          ),

          AppSizes.size12.verticalSpace,

          // Welcome TEXT
          Text(AppStrings.welcomeBack, style: AppStyles.textStyle18(textColor: AppColors.color.kPrimaryText),), 

          AppSizes.size28.verticalSpace,

          // First Text Form Field
          GestureDetector(
            child: CustomTextFormField(fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.languagePNG), fieldText: AppStrings.language, fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.leftBlackArrowPNG),),
          ),

          AppSizes.size16.verticalSpace,

          GestureDetector(
            child: CustomTextFormField(fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.countryPNG), fieldText: AppStrings.country, fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.leftBlackArrowPNG),)
          ),

          AppSizes.size16.verticalSpace,

          GestureDetector(
            child: CustomTextFormField(fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.modePNG), fieldText: AppStrings.mode, fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.leftBlackArrowPNG),)
          ),

          AppSizes.size27.verticalSpace,

          const CustomButton(buttonText: AppStrings.login, isSocialButton: false,),

          AppSizes.size16.verticalSpace,

         CustomButton(buttonText: AppStrings.signUp, isSocialButton: false,
         buttonTextStyle: AppStyles.textStyle14(textColor: AppColors.color.kPrimaryBlue),
         buttonBackgroundColor: AppColors.color.kWhite,
         buttonBorderColor: AppColors.color.kPrimaryBlue,
         ),
        ],
      ),
    );
  }
}