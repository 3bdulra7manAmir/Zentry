import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/app_borders.dart';
import '../../../core/constants/app_sizes.dart';
import '../../../core/constants/app_styles.dart';
import '../color_system/app_colors.dart';
import '../font_system/font_weights.dart';

abstract class AppThemesStyles
{
  AppThemesStyles._();

  static InputBorder? inputBorderLight = OutlineInputBorder(
    borderRadius: AppBordersRadiuses.circular10,
    borderSide: BorderSide(
      color: AppColors.color.kGrey001,
      width: AppBorderWidths.thin,
    ),
  );

  static InputBorder? inputBorderDark = OutlineInputBorder(
    borderRadius: AppBordersRadiuses.circular10,
    borderSide: BorderSide(
      color: AppColors.color.kDark001,
      width: AppSizes.size1.w,
    ),
  );

  static ElevatedButtonThemeData? elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: AppBordersRadiuses.circular10,
          side: BorderSide(color: AppColors.color.kTransparent, width: AppBorderWidths.thin,),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(AppColors.color.kBlue001,),
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      splashFactory: NoSplash.splashFactory,
      shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
      elevation: MaterialStateProperty.all(0),
      alignment: Alignment.center,
    ),
  );

  static Object? tabBarTheme = TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: AppColors.color.kOrange001,
    labelStyle: AppStyles.textStyle14(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kOrange001,),
    unselectedLabelColor: AppColors.color.kGreyText002,
    indicatorColor: AppColors.color.kOrange001,
  );


}