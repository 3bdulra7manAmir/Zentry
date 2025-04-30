import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppPadding
{
  AppPadding._();

  ///App Setup

  /// [ALL10]
  static EdgeInsets kCloudLogoPadding = const EdgeInsets.all(10);

  /// [ALL5]
  static EdgeInsets kTempPadding = const EdgeInsets.all(5);

  /// [Symmetric_16_H]
  static EdgeInsets kAppFormPadding = EdgeInsets.symmetric(horizontal: 16.w);

  /// [Symmetric_16_H_V]
  static EdgeInsets kTabBarPadding = EdgeInsets.symmetric(
    horizontal: 16.w,
    vertical: 16.w,
  );

  /// [Symmetric_12_V]
  static EdgeInsets kDividerPadding = EdgeInsets.symmetric(vertical: 12.w);

  /// [Padding_20_END]
  static EdgeInsetsDirectional kSearchIconPadding = EdgeInsetsDirectional.only(end: 20.w);

  /// [Zero]
  static EdgeInsets kZeroPadding = EdgeInsets.zero;
}
