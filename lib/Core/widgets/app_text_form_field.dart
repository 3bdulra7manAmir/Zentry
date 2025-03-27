import 'package:flutter/material.dart';
import 'package:test_app/Core/constants/app_styles.dart';
import 'package:test_app/config/themes/app_colors.dart';
import 'package:test_app/core/constants/app_borders.dart';

class CustomTextFormField extends StatelessWidget
{
  const CustomTextFormField({super.key,
  this.fieldPrefixIcon,
  required this.fieldText,
  this.fieldsuffixIcon,
  this.fieldhintStyle
  });

  final Widget? fieldPrefixIcon;
  final Widget? fieldsuffixIcon;
  final String fieldText;
  final TextStyle? fieldhintStyle;

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      //controller: TextEditingController(text: fieldText),
      decoration: InputDecoration(
        hintText: fieldText,
        hintStyle: fieldhintStyle ?? AppStyles.textStyle12(),
        filled: true,
        fillColor: AppColors.kTextFormFieldFill,
        prefixIcon: fieldPrefixIcon,
        suffixIcon: fieldsuffixIcon,
        border: OutlineInputBorder(
          borderRadius: AppBorders.buttonBorder10,
          borderSide: BorderSide(color: AppColors.kTextFormFieldBorder,)
        ),
      ),
    );
  }
}