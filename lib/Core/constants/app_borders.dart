import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppBorders
{
  AppBorders._();

  //Form Border
  /// [TopLeft_20.TopRight_20]
  static BorderRadiusGeometry formBorderRadius = BorderRadius.only(topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r));

  //Divider
  /// [Circular_4]
  static BorderRadius dividerBorderRadius = BorderRadius.circular(4.r);

  //Text Form Field
  /// [Circular_10]
  static BorderRadius radiusCircular10 = BorderRadius.circular(10.r);

}