import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/themes/color_system/app_colors.dart';
import '../constants/app_borders.dart';

class AppBottomModalSheetDrager extends StatelessWidget
{
  const AppBottomModalSheetDrager({super.key, this.width, this.height, this.color, this.borderRadius});

  final double? width;
  final double? height;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: width ?? 73.w,
      height: height ?? 3.h,
      decoration: BoxDecoration(
        color: color ?? AppColors.color.kGreyText002,
        borderRadius: borderRadius ?? AppBordersRadiuses.circular4,
      ),
    );
  }
}