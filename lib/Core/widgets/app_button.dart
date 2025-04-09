import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../config/themes/app_sizes.dart';
import '../constants/app_borders.dart';
import '../constants/app_styles.dart';


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
  });

  final double? buttonWidth;
  final double? buttonHeight;
  final BorderRadiusGeometry? buttonBorderRadius;
  final Color? buttonBorderColor;
  final double? buttonBorderWidth;
  final Color? buttonBackgroundColor;
  final String buttonText;
  final TextStyle? buttonTextStyle;

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
              side: BorderSide(color: buttonBorderColor ?? AppColors.color.kTransparent, width: buttonBorderWidth ?? AppSizes.size1,),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(buttonBackgroundColor ?? AppColors.color.kPrimaryBlue,),
        ),      
          
        child: Text(buttonText, style: buttonTextStyle ?? AppStyles.textStyle14(),),
        onPressed: () {},
      ),
    );
  }
}
