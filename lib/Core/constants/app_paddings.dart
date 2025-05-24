import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppPadding
{
  AppPadding._();

  /// All Sides Padding
  
  /// 5px all sides
  static EdgeInsets all5 = const EdgeInsets.all(5);
  
  /// 6px all sides
  static EdgeInsets all6 = const EdgeInsets.all(6.0);
  
  /// 10px all sides
  static EdgeInsets all10 = const EdgeInsets.all(10);

  /// Horizontal Symmetric Padding
  
  /// 10px horizontal
  static EdgeInsets horizontal10 = EdgeInsets.symmetric(horizontal: 10.w);
  
  /// 15px horizontal
  static EdgeInsets horizontal15 = EdgeInsets.symmetric(horizontal: 15.w);
  
  /// 16px horizontal
  static EdgeInsets horizontal16 = EdgeInsets.symmetric(horizontal: 16.w);
  /// 18px horizontal
  static EdgeInsets horizontal18 = EdgeInsets.symmetric(horizontal: 18.w);
  
  /// 21px horizontal
  static EdgeInsets horizontal21 = EdgeInsets.symmetric(horizontal: 21.w);
  
  /// 22px horizontal
  static EdgeInsets horizontal22 = EdgeInsets.symmetric(horizontal: 22.w);
  
  /// 38px horizontal
  static EdgeInsets horizontal38 = EdgeInsets.symmetric(horizontal: 38.w);

  /// Vertical Symmetric Padding
  
  /// 12px vertical
  static EdgeInsets vertical12 = EdgeInsets.symmetric(vertical: 12.w);

  /// Horizontal & Vertical Symmetric Padding
  
  /// 16px all symmetric
  static EdgeInsets symmetric16 = EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w);

  /// Directional Padding - End Only
  
  /// 15px end only
  static EdgeInsetsDirectional endOnly15 = EdgeInsetsDirectional.only(end: 15.w);
  
  /// 20px end only
  static EdgeInsetsDirectional endOnly20 = EdgeInsetsDirectional.only(end: 20.w);

  /// Directional Padding - Start Only
  
  /// 12px start only
  static EdgeInsetsDirectional startOnly12 = EdgeInsetsDirectional.only(start: 12.w);
  
  /// 13px start only
  static EdgeInsetsDirectional startOnly13 = EdgeInsetsDirectional.only(start: 13.w);

  /// Directional Padding - Complex
  
  /// Form header padding
  static EdgeInsetsDirectional formHeader = EdgeInsetsDirectional.only(
    start: 28.w,
    end: 17.w,
    top: 20.h,
    bottom: 0,
  );

  /// Next button padding
  static EdgeInsetsDirectional nextButton = EdgeInsetsDirectional.only(
    start: 16.w,
    end: 16.w,
    top: 11.h,
    bottom: 20.h,
  );

  /// Post options padding
  static EdgeInsetsDirectional postOptions = EdgeInsetsDirectional.only(
    start: 25.w,
    end: 36.w,
  );

  /// Single Side Padding
  
  /// 30px left only
  static EdgeInsets leftOnly30 = EdgeInsets.only(left: 30.0.w);
  
  /// 3px right only
  static EdgeInsets rightOnly3 = EdgeInsets.only(right: 3.w);
  
  /// 20px top only
  static EdgeInsets topOnly20 = EdgeInsets.only(top: 20.h);

  /// Special Cases
  
  /// Zero padding
  static EdgeInsets zero = EdgeInsets.zero;
}