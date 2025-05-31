import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/themes/color_system/app_colors.dart';

abstract class AppBordersRadiuses
{
  AppBordersRadiuses._();

  /// Top Only Border Radius
  
  /// Business page top radius
  static BorderRadiusGeometry topOnly10 = BorderRadius.only(
    topLeft: Radius.circular(10.r),
    topRight: Radius.circular(10.r),
  ); /// followBusinessPageBorder

  /// Indicator top radius
  static BorderRadiusGeometry topOnly12 = BorderRadius.only(
    topLeft: Radius.circular(12.r),
    topRight: Radius.circular(12.r),
  ); /// indicatorBorder

  /// Small card actions top radius
  static BorderRadiusGeometry topOnly16 = BorderRadius.only(
    topLeft: Radius.circular(16.r),
    topRight: Radius.circular(16.r),
  ); /// smallCardActionsBorder

  /// Form top radius
  static BorderRadiusGeometry topOnly20 = BorderRadius.only(
    topLeft: Radius.circular(20.r),
    topRight: Radius.circular(20.r),
  ); /// formBorder

  /// Circular Border Radius
  
  /// Date picker radius
  static BorderRadius circular1 = BorderRadius.circular(1.r);
  
  /// Divider radius
  static BorderRadius circular4 = BorderRadius.circular(4.r);
  
  /// Small button radius
  static BorderRadius circular5 = BorderRadius.circular(5.r);
  
  /// Notification card radius
  static BorderRadius circular6 = BorderRadius.circular(6.r);
  
  /// Medium button radius
  static BorderRadius circular7 = BorderRadius.circular(7.r);
  
  /// Price card radius
  static BorderRadius circular8 = BorderRadius.circular(8.r);
  
  /// Large button radius
  static BorderRadius circular10 = BorderRadius.circular(10.r); 
  
  /// Extra large button radius
  static BorderRadius circular12 = BorderRadius.circular(12.r);

  /// User image Avatar Shimmer radius
  static BorderRadius circular20 = BorderRadius.circular(20.r);
  
  /// Product item radius
  static BorderRadius circular50 = BorderRadius.circular(50.r);
  
  /// Full round radius
  static BorderRadius circular100 = BorderRadius.circular(100.r);
}


abstract class AppFullBorders
{
  AppFullBorders._();

  static BoxBorder? verificationCode = Border.all(
    color: AppColors.color.kGrey001,
    width: AppBorderWidths.thin,
  );

  static BoxBorder? completeProfileCard = Border.all(
    color: AppColors.color.kGrey001,
    width: AppBorderWidths.medium,
  );

  static BoxBorder? othersStoryCard = Border.all(
    color: AppColors.color.kOrange003,
    width: 2.w,
  );

  static BoxBorder? joinGroupsCard = Border.all(
    color: AppColors.color.kOrange002,
    width: AppBorderWidths.medium,
  );
}

abstract class AppBorderWidths
{
  AppBorderWidths._();

  /// 1px width
  static double thin = (1.0).w;
  
  /// 2px width
  static double medium = (2.0).w;
}

abstract class AppBoxBorders
{
  AppBoxBorders._();

  /// Standard grey border
  static BoxBorder? standard = Border.all(
    color: AppColors.color.kGrey001,
    width: AppBorderWidths.thin,
  );
}