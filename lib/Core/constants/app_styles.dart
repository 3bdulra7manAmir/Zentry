import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/config/themes/font_system/app_font_weight.dart';
import 'package:test_app/config/themes/font_system/app_sizes.dart';

abstract class AppStyles
{
  AppStyles._();


  /// FontWeight = [AppFontWeights.w700] ,, FontColor = [Color_5D5D5D] ,, FontFamily = [Roboto]
  static TextStyle textStyle20({
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? textColor,
  })
  {
    return TextStyle(
      fontSize: AppSizes.size20.sp,
      fontWeight: fontWeight ?? AppFontWeights.w700,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.kPrimaryText,
    );
  }


  /// FontWeight = [AppFontWeights.w600] ,, FontColor = [Color_FFFFFF] ,, FontFamily = [Roboto]
  static TextStyle textStyle18({
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? textColor,
  })
  {
    return TextStyle(
      fontSize: AppSizes.size18.sp,
      fontWeight: fontWeight ?? AppFontWeights.w600,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.kWhite,
    );
  }


  /// FontWeight = [AppFontWeights.w400] ,, FontColor = [Color_5D5D5D] ,, FontFamily = [Roboto]
  static TextStyle textStyle16({
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? textColor,
  })
  {
    return TextStyle(
      fontSize: AppSizes.size16.sp,
      fontWeight: fontWeight ?? AppFontWeights.w400,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.kPrimaryText,
    );
  }


  /// FontWeight = [AppFontWeights.w700] ,, FontColor = [Color_FFFFFF] ,, FontFamily = [Roboto]
  static TextStyle textStyle14({
  FontWeight? fontWeight,
  String? fontFamily,
  TextDecoration? textDecoration,
  TextOverflow? textOverflow,
  Color? textDecorationColor,
  Color? textColor,
  })
  {
    return TextStyle(
      fontSize: AppSizes.size14.sp,
      fontWeight: fontWeight ?? AppFontWeights.w700,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.kWhite,
    );
  }


  /// FontWeight = [AppFontWeights.w700] ,, FontColor = [Color_5D5D5D] ,, FontFamily = [Roboto]
  static TextStyle textStyle13({
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? textColor,
  })
  {
    return TextStyle(
      fontSize: AppSizes.size13.sp,
      fontWeight: fontWeight ?? AppFontWeights.w700,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.kPrimaryText,
    );
  }


  /// FontWeight = [AppFontWeights.w500] ,, FontColor = [Color_9E9E9E] ,, FontFamily = [Roboto]
  static TextStyle textStyle12({
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? textColor,
  })
  {
    return TextStyle(
      fontSize: AppSizes.size12.sp,
      fontWeight: fontWeight ?? AppFontWeights.w500,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.kSecondaryText,

    );
  }

  /// FontWeight = [AppFontWeights.w400] ,, FontColor = [Color_9E9E9E] ,, FontFamily = [Roboto]
  static TextStyle textStyle10({
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? textColor,
  })
  {
    return TextStyle(
      fontSize: AppSizes.size10.sp,
      fontWeight: fontWeight ?? AppFontWeights.w400,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.kSecondaryText,

    );
  }

}
