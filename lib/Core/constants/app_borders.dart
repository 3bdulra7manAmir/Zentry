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
  final BorderRadiusGeometry businessPage = BorderRadius.only(
    topLeft: Radius.circular(10.r),
    topRight: Radius.circular(10.r),
  ); // topOnly10

  /// [topOnly12] → Indicator top radius
  final BorderRadiusGeometry indicator = BorderRadius.only(
    topLeft: Radius.circular(12.r),
    topRight: Radius.circular(12.r),
  ); // topOnly12

  /// [topOnly16] → Small card actions top radius
  final BorderRadiusGeometry smallCardActions = BorderRadius.only(
    topLeft: Radius.circular(16.r),
    topRight: Radius.circular(16.r),
  ); // topOnly16

  /// [topOnly20] → Form top radius
  final BorderRadiusGeometry form = BorderRadius.only(
    topLeft: Radius.circular(20.r),
    topRight: Radius.circular(20.r),
  ); // topOnly20
}

class BorderCircular
{
  BorderCircular._();

  /// [circular1] → Date picker radius
  final BorderRadius datePicker = BorderRadius.circular(1.r); // circular1

  /// [circular4] → Divider radius
  final BorderRadius divider = BorderRadius.circular(4.r); // circular4

  /// [circular5] → Small button radius
  final BorderRadius smallButton = BorderRadius.circular(5.r); // circular5

  /// [circular6] → Notification card radius
  final BorderRadius notificationCard = BorderRadius.circular(6.r); // circular6

  /// [circular7] → Medium button radius
  final BorderRadius mediumButton = BorderRadius.circular(7.r); // circular7

  /// [circular8] → Price card radius
  final BorderRadius priceCard = BorderRadius.circular(8.r); // circular8

  /// [circular10] → Large button radius
  final BorderRadius largeButton = BorderRadius.circular(10.r); // circular10

  /// [circular12] → Extra large button radius
  final BorderRadius extraLargeButton = BorderRadius.circular(12.r); // circular12

  /// [circular20] → Avatar shimmer radius
  final BorderRadius avatarShimmer = BorderRadius.circular(20.r); // circular20

  /// [circular50] → Product item radius
  final BorderRadius productItem = BorderRadius.circular(50.r); // circular50

  /// [circular100] → Full round radius
  final BorderRadius fullRound = BorderRadius.circular(100.r); // circular100
}
