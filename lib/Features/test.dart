import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/config/themes/font_system/app_sizes.dart';
import 'package:test_app/core/constants/app_borders.dart';
import 'package:test_app/core/constants/app_images.dart';
import 'package:test_app/core/constants/app_padding.dart';
import 'package:test_app/core/constants/app_strings.dart';
import 'package:test_app/core/constants/app_styles.dart';
import 'package:test_app/core/widgets/app_button.dart';
import 'package:test_app/core/widgets/app_text_form_field.dart';

class TestView extends StatelessWidget
{
  const TestView({super.key,
  this.isText,
  this.downleftText,
  this.upperRightText
  });

  final bool? isText;
  final String? downleftText;
  final String? upperRightText;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      //backgroundColor: AppColors.kPrimaryBlue,
      body: Stack(
        clipBehavior: Clip.none,
        children:
        [
          Stack(
          //clipBehavior: Clip.none,
          children:
          [
            Container(
              clipBehavior: Clip.none,
              padding: EdgeInsetsDirectional.only(
                start: 28.w,
                end: 17.w,
                top: 20.h,
                bottom: 0,
              ),
              width: double.infinity,
              color: AppColors.kPrimaryBlue,
              child: Image.asset(AppAssets.iconsPNG.fullHeaderPNG),
            ),
          
            (isText ?? false) ? Positioned(
              top: 100.h, left: 17.w, right: 0,
              child: Text(downleftText ?? "Yet", style: AppStyles.textStyle18(),)) : const SizedBox.shrink(),
          
            (isText ?? false) ? Positioned(top: 44.h, right: 17.w,
              child: Row(
                children:
                [
                  Text(upperRightText ?? "Yet", style: AppStyles.textStyle13(textColor: AppColors.kSkip, textDecoration: TextDecoration.underline, textDecorationColor: AppColors.kSkip),),
                  Image.asset(AppAssets.iconsPNG.leftWhiteArrowPNG)
                ],
              ),
            ) : const SizedBox.shrink(),
          ],
        ),
      
          Positioned(
            top: 190.h,
            left: 0.w,
            right: 0.w,
            child: Container(
              padding: AppPadding.kFormPadding,
              width: double.infinity,
              height: 626.h,
              decoration: BoxDecoration(
                borderRadius: AppBorders.formBorder,
                color: AppColors.kWhite,
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
                    child: CustomTextFormField(fieldPrefixIcon: AppAssets.iconsPNG.languagePNG, fieldText: AppStrings.language,)
                  ),
            
                  AppSizes.size16.verticalSpace,
            
                  GestureDetector(
                    child: CustomTextFormField(fieldPrefixIcon: AppAssets.iconsPNG.countryPNG, fieldText: AppStrings.country)
                  ),
            
                  AppSizes.size16.verticalSpace,
            
                  GestureDetector(
                    child: CustomTextFormField(fieldPrefixIcon: AppAssets.iconsPNG.modePNG, fieldText: AppStrings.mode)
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
            ),
          ),
        ],
      ),
    );
  }
}