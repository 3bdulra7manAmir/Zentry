import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/themes/app_colors/app_colors.dart';
import '../../config/themes/app_sizes.dart';
import '../../config/themes/font_system/app_font_weights.dart';


abstract class AppStyles
{
  AppStyles._();

  
  /// FontWeight = [AppFontWeights.boldWeight] ,, FontColor = [Color_5D5D5D] ,, FontFamily = [Roboto]
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
      fontWeight: fontWeight ?? AppFontWeights.boldWeight,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.color.kPrimaryText,
    );
  }


  /// FontWeight = [AppFontWeights.semiBoldWeight] ,, FontColor = [Color_FFFFFF] ,, FontFamily = [Roboto]
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
      fontWeight: fontWeight ?? AppFontWeights.semiBoldWeight,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.color.kWhite,
    );
  }


  /// FontWeight = [AppFontWeights.regularWeight] ,, FontColor = [Color_5D5D5D] ,, FontFamily = [Roboto]
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
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.color.kPrimaryText,
    );
  }
  /// FontWeight = [AppFontWeights.regularWeight] ,, FontColor = [Color_5D5D5D] ,, FontFamily = [Roboto]
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
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.color.kPrimaryText,
    );
  }


  /// FontWeight = [AppFontWeights.boldWeight] ,, FontColor = [Color_FFFFFF] ,, FontFamily = [Roboto]
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
      fontWeight: fontWeight ?? AppFontWeights.boldWeight,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.color.kWhite,
    );
  }


  /// FontWeight = [AppFontWeights.boldWeight] ,, FontColor = [Color_5D5D5D] ,, FontFamily = [Roboto]
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
      fontWeight: fontWeight ?? AppFontWeights.boldWeight,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.color.kPrimaryText,
    );
  }


  /// FontWeight = [AppFontWeights.mediumWeight] ,, FontColor = [Color_9E9E9E] ,, FontFamily = [Roboto]
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
      fontWeight: fontWeight ?? AppFontWeights.mediumWeight,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      color: textColor ?? AppColors.color.kSecondary,

    );
  }

  /// FontWeight = [AppFontWeights.regularWeight] ,, FontColor = [Color_9E9E9E] ,, FontFamily = [Roboto]
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
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      fontFamily: fontFamily ?? 'Roboto',
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      //color: textColor ?? AppColors.color.kSecondary,

    );
  }

}
