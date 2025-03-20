import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/themes/app_colors.dart';
import 'package:test_app/core/constants/app_borders.dart';

class AppTheme
{
  AppTheme._();
  static ThemeData lightTheme()
  {
    return ThemeData(
      //brightness: 

      //scaffoldBackgroundColor: ,

      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: AppBorders.buttonBorder10,
          borderSide: BorderSide(color: AppColors.kSocailButtonBorderColor, width: 1.w),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kSocailButtonBorderColor, width: 1.w),
          borderRadius: AppBorders.buttonBorder10,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kSocailButtonBorderColor, width: 1.w),
          borderRadius: AppBorders.buttonBorder10,
        ),
      ),


      // buttonTheme: ButtonThemeData(
      //   shape: RoundedRectangleBorder(
          
      //   )
      // )
    );
  }
}
