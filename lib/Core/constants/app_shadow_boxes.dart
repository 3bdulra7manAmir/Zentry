import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/themes/color_system/app_colors.dart';

abstract class AppShadowBoxes {
  AppShadowBoxes._();

  static Shadow get bottomNavBar => BoxShadow(
        offset: const Offset(0, 1),
        blurRadius: 8.r,
        spreadRadius: 0.5.r,
        color: const Color(0x42000000),
      );

  static BoxShadow get joinGroupsCard => BoxShadow(
        color: AppColors.color.kOrange002.withAlpha((0.5 * 255).round()),
        blurRadius: 5,
      );
}
