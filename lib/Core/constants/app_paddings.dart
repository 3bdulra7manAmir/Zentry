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
  /// [ALL6]  
  static EdgeInsets kSearchResultCardPadding = const EdgeInsets.all(6.0);

  /// [Symmetric_10_H]
  static EdgeInsets kApp10Padding = EdgeInsets.symmetric(horizontal: 10.w);
  /// [Symmetric_16_H]
  static EdgeInsets kAppFormPadding = EdgeInsets.symmetric(horizontal: 16.w);
  /// [Symmetric_18_H]
  static EdgeInsets kCreatePanelPadding = EdgeInsets.symmetric(horizontal: 18.w);

  /// [Symmetric_21_H]  
  static EdgeInsets kFollowingBusinessPagePadding = EdgeInsets.symmetric(horizontal: 21.w);
  /// [Symmetric_22_H]  
  static EdgeInsets kActionsCardPadding = EdgeInsets.symmetric(horizontal: 22.w);
  /// [Symmetric_15_H]
  static EdgeInsets kApp15Padding = EdgeInsets.symmetric(horizontal: 15.w);
  /// [Symmetric_10_H]
  static EdgeInsets kSearchResultsCardPadding = EdgeInsets.symmetric(horizontal: 10.w);
  /// [Symmetric_12_V]
  static EdgeInsets kDividerPadding = EdgeInsets.symmetric(vertical: 12.w);

  /// [Symmetric_16_H_V]
  static EdgeInsets kTabBarPadding = EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w,);


  /// [Direct_20_END]
  static EdgeInsetsDirectional kSearchIconPadding = EdgeInsetsDirectional.only(end: 20.w);
  /// [Direct_15_END]
  static EdgeInsetsDirectional kPastePadding = EdgeInsetsDirectional.only(end: 15.w);
  /// [Direct_start_12_H]
  static EdgeInsetsDirectional kHomeListViewPadding = EdgeInsetsDirectional.only(start: 12.w);
  /// [Directional_S_16_E_16_T_11_B_20]
  static EdgeInsetsDirectional kNextButtonPadding = EdgeInsetsDirectional.only(start: 16.w, end: 16.w, top: 11.h, bottom: 20.h);

  static EdgeInsetsDirectional kPostOptionsPadding =  EdgeInsetsDirectional.only(start: 25.w, end: 36.w);

  ///
  static EdgeInsetsDirectional appFormHeader = EdgeInsetsDirectional.only(start: 28.w, end: 17.w, top: 20.h, bottom: 0,);
  static EdgeInsetsDirectional commentsSection = EdgeInsetsDirectional.only(start: 13.w);
  static EdgeInsets commentsSection2 = EdgeInsets.symmetric(horizontal: 38.w);

  static EdgeInsets postsInside = EdgeInsets.symmetric(horizontal: 38.w);
  static EdgeInsets joinGroups = EdgeInsets.only(left: 30.0.w);

  static EdgeInsets searchResultsCard = EdgeInsets.only(right: 3.w);
  static EdgeInsets joinGroups2 = EdgeInsets.only(top: 20.h);

  /// [Zero]
  static EdgeInsets kZeroPadding = EdgeInsets.zero;
}
