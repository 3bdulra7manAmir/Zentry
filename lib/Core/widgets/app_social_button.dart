import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/themes/app_colors/app_colors.dart';
import '../constants/app_borders.dart';
import '../constants/app_styles.dart';


class CustomSocialButton extends StatelessWidget
{
  const CustomSocialButton({
    super.key,
    this.buttonWidth,
    this.buttonHeight,
    this.buttonBorderRadius,
    this.buttonBorderColor,
    this.buttonBorderWidth,
    this.buttonBackgroundColor,
    required this.buttonText,
    this.buttonTextStyle,
    required this.platformLogo,
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
  final String platformLogo;
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
            RoundedRectangleBorder(
              borderRadius: buttonBorderRadius ?? AppBorders.buttonBorder10,
              side: BorderSide(
                color: buttonBorderColor ?? AppColors.color.kSocailButtonBorder,
                width: buttonBorderWidth ?? AppBorderWidths.width1,
              ),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(buttonBackgroundColor ?? AppColors.color.kPrimaryBlue,),
          overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
          splashFactory: NoSplash.splashFactory,
          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
          alignment: Alignment.center,
        ),

        child: Row(
                children:
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset(platformLogo)),

                  (isLogoSpace ?? false) ? const Spacer() : (spaceAmount ?? 20).horizontalSpace,

                  Expanded(
                    flex: 2,
                    child: Text(buttonText, style: buttonTextStyle ?? AppStyles.textStyle14(),)),
                ],
              ),
        onPressed: () {},
      ),
    );
  }
}
