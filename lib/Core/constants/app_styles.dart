import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Config/themes/app_colors.dart';

abstract class AppStyles
{
  AppStyles._();


  /// FontWeight = [FontWeight.w700] ,, FontColor = [Color_5D5D5D] ,, FontFamily = [Roboto]
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
      fontSize: 20.sp,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.kPrimaryText,
    );
  }


  /// FontWeight = [FontWeight.w600] ,, FontColor = [Color_FFFFFF] ,, FontFamily = [Roboto]
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
      fontSize: 18.sp,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.kWhite,
    );
  }


  /// FontWeight = [FontWeight.w400] ,, FontColor = [Color_5D5D5D] ,, FontFamily = [Roboto]
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
      fontSize: 16.sp,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.kPrimaryText,
    );
  }


  /// FontWeight = [FontWeight.w700] ,, FontColor = [Color_FFFFFF] ,, FontFamily = [Roboto]
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
      fontSize: 14.sp,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.kWhite,
    );
  }


  /// FontWeight = [FontWeight.w700] ,, FontColor = [Color_5D5D5D] ,, FontFamily = [Roboto]
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
      fontSize: 13.sp,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.kPrimaryText,
    );
  }


  /// FontWeight = [FontWeight.w500] ,, FontColor = [Color_9E9E9E] ,, FontFamily = [Roboto]
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
      fontSize: 12.sp,
      fontWeight: fontWeight ?? FontWeight.w500,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.kSecondaryText,

    );
  }

}
