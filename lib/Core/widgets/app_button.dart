import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/themes/color_system/app_colors.dart';
import '../constants/app_borders.dart';
import '../constants/app_styles.dart';

class CustomButton extends ConsumerWidget
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
    this.buttonOnPressed,
    this.buttonPadding,
  });

  final double? buttonWidth;
  final double? buttonHeight;
  final BorderRadiusGeometry? buttonBorderRadius;
  final Color? buttonBorderColor;
  final double? buttonBorderWidth;
  final Color? buttonBackgroundColor;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final void Function()? buttonOnPressed;
  final EdgeInsetsGeometry? buttonPadding;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return SizedBox(
      width: buttonWidth ?? double.infinity,
      height: buttonHeight ?? 48.h,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(buttonPadding),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: buttonBorderRadius ?? AppBordersRadiuses.circular10,
              side: BorderSide(color: buttonBorderColor ?? AppColors.color.kTransparent, width: buttonBorderWidth ?? AppBorderWidths.thin,),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(buttonBackgroundColor ?? AppColors.color.kBlue001,),
        ),
        onPressed: buttonOnPressed,
        child: Text(buttonText, style: buttonTextStyle ?? AppStyles.textStyle14(fontColor: AppColors.color.kWhite003,),),
      ),
    );
  }
}
