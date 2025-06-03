import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppMargins
{
  AppMargins._();
  static final symmetric = MarginsSymmetric._();
  static final directional = MarginsDirectional._();

}


class MarginsSymmetric
{
  MarginsSymmetric._();

  /// [_horizontal_9.w] Extra Extra Small Margin (9px)
  final EdgeInsets xxSmall = EdgeInsets.symmetric(horizontal: 9.w);

  /// [_horizontal_10.w] Extra Small Margin (10px)
  final EdgeInsets xSmall = EdgeInsets.symmetric(horizontal: 10.w);

  /// [_horizontal_16.w] Small-Medium Margin (16px)
  final EdgeInsets medium = EdgeInsets.symmetric(horizontal: 16.w);

  /// [_horizontal_18.w] Medium Margin (18px)
  final EdgeInsets large = EdgeInsets.symmetric(horizontal: 18.w);
}


class MarginsDirectional
{
  MarginsDirectional._();

  /// [_directional_12.w] Start Directional Margin (12px)
  final EdgeInsetsDirectional small = EdgeInsetsDirectional.only(start: 12.w);
}