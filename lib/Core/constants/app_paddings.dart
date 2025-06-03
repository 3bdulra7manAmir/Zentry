import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppPadding
{
  AppPadding._();
  static final all = PaddingsAll._();
  static final symmetric = PaddingsSymmetric._();
  static final directional = PaddingsDirectional._();
  static final single = PaddingsSingle._();
  static final special = PaddingsSpecial._();
}

/// [_all_]
class PaddingsAll
{
  PaddingsAll._();

  /// 5px all sides
  final EdgeInsets xxSmallAll = const EdgeInsets.all(5); // xxSmallAll

  /// 6px all sides
  final EdgeInsets xSmallAll = const EdgeInsets.all(6.0); // xSmallAll

  /// 10px all sides
  final EdgeInsets smallAll = const EdgeInsets.all(10); // smallAll
}

/// [_symmetric_]
class PaddingsSymmetric
{
  PaddingsSymmetric._();

  /// 10px horizontal
  final EdgeInsets smallHorizontal = EdgeInsets.symmetric(horizontal: 10.w);

  /// 15px horizontal
  final EdgeInsets mediumHorizontal = EdgeInsets.symmetric(horizontal: 15.w);

  /// 16px horizontal
  final EdgeInsets largeHorizontal = EdgeInsets.symmetric(horizontal: 16.w);

  /// 18px horizontal
  final EdgeInsets xLargeHorizontal = EdgeInsets.symmetric(horizontal: 18.w);

  /// 21px horizontal
  final EdgeInsets xxLargeHorizontal = EdgeInsets.symmetric(horizontal: 21.w);

  /// 22px horizontal
  final EdgeInsets xxxLargeHorizontal = EdgeInsets.symmetric(horizontal: 22.w);

  /// 38px horizontal
  final EdgeInsets hugeHorizontal = EdgeInsets.symmetric(horizontal: 38.w);

  /// 12px vertical
  final EdgeInsets mediumVertical = EdgeInsets.symmetric(vertical: 12.w);

  /// 16px all symmetric
  final EdgeInsets mediumAllSymmetric = EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w);
}

/// [_directional_]
class PaddingsDirectional
{
  PaddingsDirectional._();

  /// 15px end only
  final EdgeInsetsDirectional mediumEnd = EdgeInsetsDirectional.only(end: 15.w);

  /// 20px end only
  final EdgeInsetsDirectional largeEnd = EdgeInsetsDirectional.only(end: 20.w);

  /// 12px start only
  final EdgeInsetsDirectional mediumStart = EdgeInsetsDirectional.only(start: 12.w);

  /// 13px start only
  final EdgeInsetsDirectional mediumPlusStart = EdgeInsetsDirectional.only(start: 13.w);

  /// Form header padding
  final EdgeInsetsDirectional formHeader = EdgeInsetsDirectional.only(
    start: 28.w,
    end: 17.w,
    top: 20.h,
    bottom: 0,
  ); // formHeader

  /// Next button padding
  final EdgeInsetsDirectional nextButton = EdgeInsetsDirectional.only(
    start: 16.w,
    end: 16.w,
    top: 11.h,
    bottom: 20.h,
  ); // nextButton

  /// Post options padding
  final EdgeInsetsDirectional postOptions = EdgeInsetsDirectional.only(
    start: 25.w,
    end: 36.w,
  ); // postOptions
}

/// [_single_]
class PaddingsSingle
{
  PaddingsSingle._();

  /// 30px left only
  final EdgeInsets largeLeft = EdgeInsets.only(left: 30.0.w);

  /// 3px right only
  final EdgeInsets xxSmallRight = EdgeInsets.only(right: 3.w);

  /// 20px top only
  final EdgeInsets largeTop = EdgeInsets.only(top: 20.h);
}

/// [_special_]
class PaddingsSpecial
{
  PaddingsSpecial._();

  /// Zero padding
  final EdgeInsets zero = EdgeInsets.zero;
}
