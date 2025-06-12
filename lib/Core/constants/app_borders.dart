import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppBordersRadiuses
{
  AppBordersRadiuses._();

  static final top = BorderTopOnly._();
  static final circular = BorderCircular._();
}

class BorderTopOnly
{
  BorderTopOnly._();

  /// [topOnly10] → Business page top radius
  BorderRadiusGeometry get businessPage => BorderRadius.only(
        topLeft: Radius.circular(10.r),
        topRight: Radius.circular(10.r),
      ); // topOnly10

  /// [topOnly12] → Indicator top radius
  BorderRadiusGeometry get indicator => BorderRadius.only(
        topLeft: Radius.circular(12.r),
        topRight: Radius.circular(12.r),
      ); // topOnly12

  /// [topOnly16] → Small card actions top radius
  BorderRadiusGeometry get smallCardActions => BorderRadius.only(
        topLeft: Radius.circular(16.r),
        topRight: Radius.circular(16.r),
      ); // topOnly16

  /// [topOnly20] → Form top radius
  BorderRadiusGeometry get form => BorderRadius.only(
        topLeft: Radius.circular(20.r),
        topRight: Radius.circular(20.r),
      ); // topOnly20
}

class BorderCircular {
  BorderCircular._();

  /// [circular1] → Date picker radius
  BorderRadius get datePicker => BorderRadius.circular(1.r); // circular1

  /// [circular4] → Divider radius
  BorderRadius get divider => BorderRadius.circular(4.r); // circular4

  /// [circular5] → Small button radius
  BorderRadius get smallButton => BorderRadius.circular(5.r); // circular5

  /// [circular6] → Notification card radius
  BorderRadius get notificationCard => BorderRadius.circular(6.r); // circular6

  /// [circular7] → Medium button radius
  BorderRadius get mediumButton => BorderRadius.circular(7.r); // circular7

  /// [circular8] → Price card radius
  BorderRadius get priceCard => BorderRadius.circular(8.r); // circular8

  /// [circular10] → Large button radius
  BorderRadius get largeButton => BorderRadius.circular(10.r); // circular10

  /// [circular12] → Extra large button radius
  BorderRadius get extraLargeButton => BorderRadius.circular(12.r); // circular12

  /// [circular20] → Avatar shimmer radius
  BorderRadius get avatarShimmer => BorderRadius.circular(20.r); // circular20

  /// [circular50] → Product item radius
  BorderRadius get productItem => BorderRadius.circular(50.r); // circular50

  /// [circular100] → Full round radius
  BorderRadius get fullRound => BorderRadius.circular(100.r); // circular100
}
