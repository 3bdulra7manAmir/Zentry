import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/Core/constants/app_borders.dart';
import 'package:test_app/Core/constants/app_colors.dart';
import 'package:test_app/Core/constants/app_images.dart';
import 'package:test_app/Core/constants/app_styles.dart';

class CustomTextFormField extends StatelessWidget
{
  const CustomTextFormField({super.key,
  required this.fieldPrefixIcon,
  required this.fieldText
  });

  final String fieldPrefixIcon;
  final String fieldText;

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      //controller: TextEditingController(text: fieldText),
      decoration: InputDecoration(
        hintText: fieldText,
        hintStyle: AppStyles.textStyle12.copyWith(fontWeight: FontWeight.w500, color: AppColors.kDivider),
        filled: true,
        fillColor: AppColors.kTextFormFieldFill,
        prefixIcon: Image.asset(fieldPrefixIcon), // Before Icon
        suffixIcon: Image.asset(AppAssets.iconsPNG.leftArrowPNG), // After Icon
        border: OutlineInputBorder(
          borderRadius: AppBorders.radiusCircular10,
          borderSide: BorderSide(color: AppColors.kTextFormFieldBorder,)
        ),
      ),
    );
  }
}