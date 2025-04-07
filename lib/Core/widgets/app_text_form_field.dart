import 'package:flutter/material.dart';

import '../constants/app_styles.dart';


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
      decoration: InputDecoration(
        hintText: fieldText,
        hintStyle: fieldhintStyle ?? AppStyles.textStyle12(),
        prefixIcon: fieldPrefixIcon,
        suffixIcon: fieldsuffixIcon,
      ),
    );
  }
}