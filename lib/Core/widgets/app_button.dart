import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Core/constants/app_borders.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/core/constants/app_images.dart';
import 'package:test_app/core/constants/app_styles.dart';

class CustomButton extends StatelessWidget
{
  const CustomButton({
    super.key,
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
    this.isLogoSpace,
    this.spaceAmount,
  });

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
  final double? spaceAmount;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: buttonWidth ?? double.infinity,
      height: buttonHeight ?? 48.h,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: buttonBorderRadius ?? AppBorders.buttonBorder10,
              side: BorderSide(color: buttonBorderColor ?? AppColors.kTransparent, width: buttonBorderWidth ?? 1.w,),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(buttonBackgroundColor ?? AppColors.kPrimaryBlue,),
          alignment: Alignment.center,
        ),      
          
        child: isSocialButton
            ? Row(
                children:
                [
                  Image.asset(platformLogo ?? AppAssets.iconsPNG.corssedEyePNG),
                  (isLogoSpace ?? false) ? const Spacer() : (spaceAmount ?? 20).horizontalSpace,
                  Text(buttonText, style: buttonTextStyle ?? AppStyles.textStyle14(),),
                ],
              )
            : Text(buttonText, style: buttonTextStyle ?? AppStyles.textStyle14(),),
            
        onPressed: () {},
      ),
    );
  }
}
