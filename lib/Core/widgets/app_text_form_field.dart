import 'package:flutter/material.dart';


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
        hintStyle: fieldhintStyle ?? Theme.of(context).textTheme.labelMedium, //AppStyles.textStyle12()
        prefixIcon: fieldPrefixIcon,
        suffixIcon: fieldsuffixIcon,
      ),
    );
  }
}