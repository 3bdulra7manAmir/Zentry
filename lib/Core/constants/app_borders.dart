import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppBorders
{
  AppBorders._();

  //Form Border
  /// [TopLeft_20.TopRight_20]
  static BorderRadiusGeometry formBorder = BorderRadius.only(topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r));

  /// [TopLeft_12.TopRight_12]
  static BorderRadiusGeometry indicatorBorder = BorderRadius.only(topLeft: Radius.circular(12.r), topRight: Radius.circular(12.r));

  //Divider
  /// [Circular_4]
  static BorderRadius dividerBorder = BorderRadius.circular(4.r);

  //Text Form Field
  /// [Circular_10]
  static BorderRadius buttonBorder10 = BorderRadius.circular(10.r);

}