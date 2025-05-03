import 'package:flutter/material.dart';
import '../constants/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.fieldValidator,
    this.fieldController,
    required this.fieldKeyboardType,
    this.fieldPrefixIcon,
    required this.fieldText,
    this.fieldhintStyle,
    this.fieldsuffixIcon,
    //this.fieldKeyboardAppearance,
    this.fieldObscureText,
    this.fieldIsEnabled,
    this.fieldReadOnly,
    this.fieldFillColor,
    this.fieldFocusedColor,
    this.fieldBorderRadius,
    this.fieldSuffixStyle,
  });

  final Widget? fieldPrefixIcon;
  final Widget? fieldsuffixIcon;
  final String fieldText;
  final TextStyle? fieldhintStyle;
  final String? Function(String?)? fieldValidator;
  final TextEditingController? fieldController;
  final TextInputType fieldKeyboardType;
  final bool? fieldObscureText;
  final bool? fieldIsEnabled;
  final bool? fieldReadOnly;
  final Color? fieldFillColor;
  final Color? fieldFocusedColor;
  final BorderRadius? fieldBorderRadius;
  final TextStyle? fieldSuffixStyle;

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      enabled: fieldIsEnabled ?? true,
      keyboardType: fieldKeyboardType,
      readOnly: fieldReadOnly ?? false,
      obscureText: fieldObscureText ?? false,
      controller: fieldController,
      validator: fieldValidator,
      decoration: InputDecoration(
        hintText: fieldText,
        hintStyle: fieldhintStyle ?? AppStyles.textStyle12(),
        prefixIcon: fieldPrefixIcon,
        suffixIcon: fieldsuffixIcon,
        suffixStyle: fieldSuffixStyle,
        fillColor: fieldFillColor,
        focusColor: fieldFocusedColor,
        border: fieldBorderRadius != null ? OutlineInputBorder(borderRadius: fieldBorderRadius!,): null,
      ),
    );
  }
}
