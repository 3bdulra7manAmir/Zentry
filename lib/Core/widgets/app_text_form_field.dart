import 'package:flutter/material.dart';

import '../constants/app_styles.dart';


class CustomTextFormField extends StatelessWidget
{
  const CustomTextFormField({super.key,
  this.fieldPrefixIcon,
  required this.fieldText,
  this.fieldsuffixIcon,
  this.fieldhintStyle,
  required this.fieldValidator,
  required this.fieldController,
  });

  final Widget? fieldPrefixIcon;
  final Widget? fieldsuffixIcon;
  final String fieldText;
  final TextStyle? fieldhintStyle;
  final String? Function(String?)? fieldValidator;
  final TextEditingController? fieldController;

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      controller: fieldController,
      validator: fieldValidator,
      decoration: InputDecoration(
        hintText: fieldText,
        hintStyle: fieldhintStyle ?? AppStyles.textStyle12(),
        prefixIcon: fieldPrefixIcon,
        suffixIcon: fieldsuffixIcon,
      ),
    );
  }
}