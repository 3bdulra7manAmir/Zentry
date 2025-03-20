import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Core/constants/app_borders.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/core/constants/app_images.dart';
import 'package:test_app/core/constants/app_styles.dart';

class CustomButton extends StatelessWidget
{
  const CustomButton({super.key,
  this.buttonWidth,
  this.buttonHeight,
  this.buttonBorderRadius,
  this.buttonBorderColor,
  this.buttonBorderWidth,
  this.buttonBackgroundColor,
  required this.buttonText,
  this.buttonTextStyle,
  required this.isSocialButton,
  this.platformLogo,
  this.isLogoSpace,});

  final double? buttonWidth;
  final double? buttonHeight;
  final BorderRadiusGeometry? buttonBorderRadius;
  final Color? buttonBorderColor;
  final double? buttonBorderWidth;
  final Color? buttonBackgroundColor;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final bool isSocialButton;
  final String? platformLogo;
  final bool? isLogoSpace;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: buttonWidth ?? 358.w,
      height: buttonHeight ?? 48.h,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: buttonBorderRadius ?? AppBorders.radiusCircular10,
            side: BorderSide(color: buttonBorderColor ?? AppColors.kPrimaryBlue, width: buttonBorderWidth ?? 1.w)
            ),
          ),
          alignment: Alignment.center,
          //padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(AppPadding.kAll10),
          backgroundColor: WidgetStatePropertyAll(buttonBackgroundColor ?? AppColors.kPrimaryBlue,),
        ),
        onPressed: (){},
        child: !isSocialButton ? Text(buttonText, style: buttonTextStyle ?? AppStyles.textStyle14()) :
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Image.asset(platformLogo ?? AppAssets.iconsPNG.corssedEyePNG),
            
            (isLogoSpace ?? true) ? const Spacer() : 30.horizontalSpace,
            
            Text(buttonText, style: buttonTextStyle ?? AppStyles.textStyle14()),
          ],
        )
        ,
      ),
    );
  }
}