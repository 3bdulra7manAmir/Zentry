import 'package:flutter/material.dart';
import 'package:test_app/Core/constants/app_images.dart';
import 'package:test_app/Core/constants/app_styles.dart';
import 'package:test_app/config/themes/app_colors.dart';
import 'package:test_app/core/constants/app_borders.dart';

class CustomTextFormField extends StatelessWidget
{
  const CustomTextFormField({super.key,
  this.fieldPrefixIcon,
  required this.fieldText,
  this.fieldsuffixIcon
  });

  final String? fieldPrefixIcon;
  final String? fieldsuffixIcon;
  final String fieldText;

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      //controller: TextEditingController(text: fieldText),
      decoration: InputDecoration(
        hintText: fieldText,
        hintStyle: AppStyles.textStyle12(),
        filled: true,
        fillColor: AppColors.kTextFormFieldFill,
        prefixIcon: fieldPrefixIcon != null ? Image.asset(fieldPrefixIcon!) : null, // Before Icon // Only show if provided
        suffixIcon: fieldsuffixIcon != null ? Image.asset(fieldsuffixIcon ?? AppAssets.iconsPNG.leftBlackArrowPNG) : null, // After Icon // Default in not PRovided
        border: OutlineInputBorder(
          borderRadius: AppBorders.buttonBorder10,
          borderSide: BorderSide(color: AppColors.kTextFormFieldBorder,)
        ),
      ),
    );
  }
}