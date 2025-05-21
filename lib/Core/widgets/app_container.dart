import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/themes/color_system/app_colors.dart';
import '../constants/app_borders.dart';
import '../constants/app_paddings.dart';
import '../constants/app_sizes.dart';
import '../constants/app_styles.dart';

class CustomContainer extends StatelessWidget
{
  const CustomContainer({
    super.key,
    this.fieldPrefixIcon,
    required this.fieldText,
    this.fieldsuffixIcon,
    this.fieldhintStyle,
  });

  final Widget? fieldPrefixIcon;
  final Widget? fieldsuffixIcon;
  final String fieldText;
  final TextStyle? fieldhintStyle;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 358.w,
      height: 48.h,
      padding: AppPadding.kAppFormPadding,
      decoration: BoxDecoration(
        borderRadius: AppBorders.buttonBorder10,
        color: AppColors.color.kGrey002,
      ),
      child: Row(
        children:
        [
          if (fieldPrefixIcon != null) ...
          [
            fieldPrefixIcon!,
            AppSizes.size10.horizontalSpace,
          ],
          Expanded(
            child: Text(fieldText, style: fieldhintStyle ?? AppStyles.textStyle12(),),
          ),
          if (fieldsuffixIcon != null) ...
          [
            AppSizes.size10.horizontalSpace,
            fieldsuffixIcon!,
          ],
        ],
      ),
    );
  }
}
