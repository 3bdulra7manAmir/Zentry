import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_styles.dart';


class CreatePanelButton extends StatelessWidget
{
  const CreatePanelButton({super.key,
  this.buttonTextStyle,
  this.buttonOnPressed,
  this.buttonBorderRadius,
  this.buttonBackgroundColor,
  required this.buttonText,
  required this.iconPath,
  this.buttonWidth,
  this.buttonHeight});

  final String iconPath;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final void Function()? buttonOnPressed;
  final BorderRadiusGeometry? buttonBorderRadius;
  final Color? buttonBackgroundColor;
  final double? buttonWidth;
  final double? buttonHeight;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: buttonWidth ?? 153.w,
      height: buttonHeight ?? 31.h,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonBackgroundColor ?? AppColors.color.kFormButtonsFill,
          shape: RoundedRectangleBorder(borderRadius: buttonBorderRadius ?? AppBorders.buttonBorder5),
        ),
        icon: Image.asset(iconPath),
        label: Text(buttonText, style: buttonTextStyle ?? AppStyles.textStyle12(fontColor: AppColors.color.kSemiGreyAgain, fontWeight: AppFontWeights.boldWeight),),
        onPressed: buttonOnPressed,
      ),
    );
  }
}