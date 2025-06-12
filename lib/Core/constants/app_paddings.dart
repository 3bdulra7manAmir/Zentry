import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppPadding {
  AppPadding._();
  static final all = PaddingsAll._();
  static final symmetric = PaddingsSymmetric._();
  static final directional = PaddingsDirectional._();
  static final single = PaddingsSingle._();
  static final special = PaddingsSpecial._();
}

/// [_all_]
class PaddingsAll {
  PaddingsAll._();

  /// 5px all sides
  final EdgeInsets xxSmallAll = const EdgeInsets.all(5); // xxSmallAll

  /// 6px all sides
  final EdgeInsets xSmallAll = const EdgeInsets.all(6.0); // xSmallAll

  /// 10px all sides
  final EdgeInsets smallAll = const EdgeInsets.all(10); // smallAll
}

/// [_symmetric_]
class PaddingsSymmetric {
  PaddingsSymmetric._();

  /// 10px horizontal
  EdgeInsets get smallHorizontal => EdgeInsets.symmetric(horizontal: 10.w);

  /// 15px horizontal
  EdgeInsets get mediumHorizontal => EdgeInsets.symmetric(horizontal: 15.w);

  /// 16px horizontal
  EdgeInsets get largeHorizontal => EdgeInsets.symmetric(horizontal: 16.w);

  /// 18px horizontal
  EdgeInsets get xLargeHorizontal => EdgeInsets.symmetric(horizontal: 18.w);

  /// 21px horizontal
  EdgeInsets get xxLargeHorizontal => EdgeInsets.symmetric(horizontal: 21.w);

  /// 22px horizontal
  EdgeInsets get xxxLargeHorizontal => EdgeInsets.symmetric(horizontal: 22.w);

  /// 38px horizontal
  EdgeInsets get hugeHorizontal => EdgeInsets.symmetric(horizontal: 38.w);

  /// 12px vertical
  EdgeInsets get mediumVertical => EdgeInsets.symmetric(vertical: 12.w);

  /// 16px all symmetric
  EdgeInsets get mediumAllSymmetric =>
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w);
}

/// [_directional_]
class PaddingsDirectional {
  PaddingsDirectional._();

  /// 15px end only
  EdgeInsetsDirectional get mediumEnd => EdgeInsetsDirectional.only(end: 15.w);

  /// 20px end only
  EdgeInsetsDirectional get largeEnd => EdgeInsetsDirectional.only(end: 20.w);

  /// 12px start only
  EdgeInsetsDirectional get mediumStart =>
      EdgeInsetsDirectional.only(start: 12.w);

  /// 13px start only
  EdgeInsetsDirectional get mediumPlusStart =>
      EdgeInsetsDirectional.only(start: 13.w);

  /// Form header padding
  EdgeInsetsDirectional get formHeader => EdgeInsetsDirectional.only(
        start: 28.w,
        end: 17.w,
        top: 20.h,
      ); // formHeader

  /// Next button padding
  EdgeInsetsDirectional get nextButton => EdgeInsetsDirectional.only(
        start: 16.w,
        end: 16.w,
        top: 11.h,
        bottom: 20.h,
      ); // nextButton

  /// Post options padding
  EdgeInsetsDirectional get postOptions => EdgeInsetsDirectional.only(
        start: 25.w,
        end: 36.w,
      ); // postOptions
}

/// [_single_]
class PaddingsSingle {
  PaddingsSingle._();

  /// 30px left only
  EdgeInsets get largeLeft => EdgeInsets.only(left: 30.0.w);

  /// 3px right only
  EdgeInsets get xxSmallRight => EdgeInsets.only(right: 3.w);

  /// 20px top only
  EdgeInsets get largeTop => EdgeInsets.only(top: 20.h);
}

/// [_special_]
class PaddingsSpecial {
  PaddingsSpecial._();

  /// Zero padding
  final EdgeInsets zero = EdgeInsets.zero;
}
