import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppMargins
{
  AppMargins._();

  /// Horizontal Margins - 10px
  static EdgeInsets horizontal10 = EdgeInsets.symmetric(horizontal: 10.w); /// horizontal10

  /// Horizontal Margins - 16px  
  static EdgeInsets horizontal16 = EdgeInsets.symmetric(horizontal: 16.w); /// horizontal16

  /// Horizontal Margins - 18px
  static EdgeInsets horizontal18 = EdgeInsets.symmetric(horizontal: 18.w); /// horizontal18

  /// Directional Margins - Start 12px
  static EdgeInsetsDirectional startOnly12 = EdgeInsetsDirectional.only(start: 12.w); /// startOnly12
}