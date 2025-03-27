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

      scaffoldBackgroundColor: AppColors.kWhite,
      cardColor: AppColors.kWhite,

      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: AppBorders.buttonBorder10,
          borderSide: BorderSide(color: AppColors.kSocailButtonBorderColor, width: 1.w,),
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

  static ThemeData darkTheme()
  {
    return ThemeData(
      //brightness: ,

      scaffoldBackgroundColor: AppColors.kDarkScaffoldBGColor,
      cardColor: AppColors.kDarkScaffoldBGColor,
      //primaryColorLight: AppColors.kDarkScaffoldBGColor,
      

      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: AppBorders.buttonBorder10,
          borderSide: BorderSide(color: AppColors.kSocailButtonBorderColor, width: 1.w,),
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


      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   style: ElevatedButton.styleFrom(
      //     shape: RoundedRectangleBorder(borderRadius: AppBorders.buttonBorder10,),
      //     side: BorderSide(color: AppColors.kDarkScaffoldBGColor, width: 1.w,),
      //     //backgroundColor: AppColors.kPrimaryBlue,
      //   ),
      // ),

      // appBarTheme: AppBarTheme(
      //   elevation: 0,
      //   centerTitle: true,
      //   scrolledUnderElevation: 0,
      //   backgroundColor: AppColors.,
      //   systemOverlayStyle: SystemUiOverlayStyle.dark,
      //   iconTheme: IconThemeData(color: AppColors.),
      //   titleTextStyle: StylesManager.extraBold(
      //     fontSize: AppSizes.size,
      //     color: AppColors.,
      //   ),
      // ),

      
    );
  }
}
