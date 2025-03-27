import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Core/constants/app_borders.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/Core/constants/app_images.dart';
import 'package:test_app/Core/constants/app_padding.dart';
import 'package:test_app/Core/constants/app_styles.dart';
import 'package:test_app/Core/widgets/app_text_form_field.dart';
import 'package:test_app/config/themes/font_system/app_sizes.dart';
import 'package:test_app/core/constants/app_strings.dart';
import 'package:test_app/core/widgets/app_button.dart';

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
              color: AppColors.kSecondaryText,
              borderRadius: AppBorders.dividerBorder,
            ),
          ),

          AppSizes.size12.verticalSpace,

          // Welcome TEXT
          Text(AppStrings.welcomeBack, style: AppStyles.textStyle18(textColor: AppColors.kPrimaryText)),

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
         buttonTextStyle: AppStyles.textStyle14(textColor: AppColors.kPrimaryBlue),
         buttonBackgroundColor: AppColors.kWhite,
         buttonBorderColor: AppColors.kPrimaryBlue,
         ),
        ],
      ),
    );
  }
}