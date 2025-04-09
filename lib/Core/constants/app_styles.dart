import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/themes/font_system/app_font_sizes.dart';
import '../../config/themes/app_colors/colors_manager/app_colors.dart';
import '../../config/themes/app_sizes.dart';
import '../../config/themes/font_system/app_font_weights.dart';


abstract class AppStyles
{
  AppStyles._();

  
  /// FontWeight = [w700], FontColor = [_FFFFFF], FontFamily = [Roboto]
  static TextStyle textStyle22({
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? textColor,
  })
  {
    return TextStyle(
      fontSize: AppFontSizes.xXXLarge.sp,
      fontWeight: fontWeight ?? AppFontWeights.boldWeight,
      fontFamily: fontFamily,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.color.kWhite,
    );
  }

  /// FontWeight = [w700], FontColor = [_5D5D5D], FontFamily = [Roboto]
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
      fontSize: AppFontSizes.xXLarge.sp,
      fontWeight: fontWeight ?? AppFontWeights.boldWeight,
      fontFamily: fontFamily,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.color.kPrimaryText,
    );
  }


  /// FontWeight = [w600], FontColor = [_FFFFFF], FontFamily = [Roboto]
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
      fontSize: AppFontSizes.xLarge.sp,
      fontWeight: fontWeight ?? AppFontWeights.semiBoldWeight,
      fontFamily: fontFamily,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.color.kWhite,
    );
  }


  /// FontWeight = [w400], FontColor = [_5D5D5D], FontFamily = [Roboto]
  static TextStyle textStyle17({
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? textColor,
  })
  {
    return TextStyle(
      fontSize: AppSizes.size17.sp,
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      fontFamily: fontFamily,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.color.kPrimaryText,
    );
  }
  /// FontWeight = [w400], FontColor = [_5D5D5D], FontFamily = [Roboto]
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
      fontSize: AppFontSizes.large.sp,
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      fontFamily: fontFamily,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.color.kPrimaryText,
    );
  }


  /// FontWeight = [w700], FontColor = [_FFFFFF], FontFamily = [Roboto]
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
      fontSize: AppFontSizes.medium.sp,
      fontWeight: fontWeight ?? AppFontWeights.boldWeight,
      fontFamily: fontFamily,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.color.kWhite,
    );
  }


  /// FontWeight = [w700], FontColor = [_5D5D5D], FontFamily = [Roboto]
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
      fontSize: AppFontSizes.semiSmall.sp,
      fontWeight: fontWeight ?? AppFontWeights.boldWeight,
      fontFamily: fontFamily,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.color.kPrimaryText,
    );
  }


  /// FontWeight = [w500], FontColor = [_9E9E9E], FontFamily = [Roboto]
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
      fontSize: AppFontSizes.small.sp,
      fontWeight: fontWeight ?? AppFontWeights.mediumWeight,
      fontFamily: fontFamily,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.color.kSecondary,

    );
  }

  /// FontWeight = [w400], FontColor = [_9E9E9E], FontFamily = [Roboto]
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
      fontSize: AppFontSizes.xSmall.sp,
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      fontFamily: fontFamily,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      //color: textColor ?? AppColors.color.kSecondary,

    );
  }

}
