import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/themes/color_system/app_colors.dart';


abstract class AppBorderWidths
{
  AppBorderWidths._();

  /// [thin] → 1px
  static double thin = 1.0.w;

  /// [medium] → 2px
  static double medium = 2.0.w;
}


abstract class AppFullBorders
{
  AppFullBorders._();

  /// [verificationCode] → Thin grey border
  static BoxBorder? verificationCode = Border.all(
    color: AppColors.color.kGrey001,
    width: AppBorderWidths.thin,
  );

  /// [completeProfileCard] → Medium grey border
  static BoxBorder? completeProfileCard = Border.all(
    color: AppColors.color.kGrey001,
    width: AppBorderWidths.medium,
  );

  /// [othersStoryCard] → Orange thick border
  static BoxBorder? othersStoryCard = Border.all(
    color: AppColors.color.kOrange003,
    width: 2.w,
  );

  /// [joinGroupsCard] → Medium orange border
  static BoxBorder? joinGroupsCard = Border.all(
    color: AppColors.color.kOrange002,
    width: AppBorderWidths.medium,
  );
}

/// App Box Borders
abstract class AppBoxBorders
{
  AppBoxBorders._();

  /// [standard] → Thin grey standard border
  static BoxBorder? standard = Border.all(
    color: AppColors.color.kGrey001,
    width: AppBorderWidths.thin,
  );
}
