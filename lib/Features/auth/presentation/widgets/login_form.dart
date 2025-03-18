import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Core/constants/app_borders.dart';
import 'package:test_app/Core/constants/app_colors.dart';
import 'package:test_app/Core/constants/app_images.dart';
import 'package:test_app/Core/constants/app_padding.dart';
import 'package:test_app/Core/constants/app_styles.dart';
import 'package:test_app/Core/widgets/button.dart';
import 'package:test_app/Core/widgets/text_form_field.dart';

class LoginForm extends StatelessWidget
{
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.kSymmetric16H,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: AppBorders.radiusCircular20,
        color: AppColors.kWhite,
      ),

      //Full Form Column
      child: Column(
        children:
        [
          //Divider
          Container(
            margin: AppPadding.kSymmetric12V,
            width: 73.w,
            height: 1.h,
            decoration: BoxDecoration(
              color: AppColors.kDivider,
              borderRadius: AppBorders.radiusCircular4,
            ),
          ),

          16.verticalSpace,

          // Welcome TEXT
          Text("Welcome Back", style: AppStyles.textStyle18.copyWith(fontWeight: FontWeight.w600),),

          28.verticalSpace,

          // First Text Form Field
          GestureDetector(
            child: CustomTextFormField(fieldPrefixIcon: AppAssets.iconsPNG.languagePNG, fieldText: "Langauage",)
          ),

          16.verticalSpace,

          GestureDetector(
            child: CustomTextFormField(fieldPrefixIcon: AppAssets.iconsPNG.countryPNG, fieldText: "Country")
          ),

          16.verticalSpace,

          GestureDetector(
            child: CustomTextFormField(fieldPrefixIcon: AppAssets.iconsPNG.modePNG, fieldText: "Mode")
          ),

          27.verticalSpace,

          const CustomButton(buttonText: "Login",),

          16.verticalSpace,

         CustomButton(buttonText: "Sign up",
         buttonTextStyle: AppStyles.textStyle14.copyWith(color: AppColors.kPrimaryBlue),
         buttonBackgroundColor: AppColors.kWhite,
         buttonBorderColor: AppColors.kPrimaryBlue,
         ),
        ],
      ),
    );
  }
}