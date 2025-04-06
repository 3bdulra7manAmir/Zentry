import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_borders.dart';
import 'app_colors/app_colors_.dart';
import 'app_sizes.dart';
import 'app_text_theme.dart';

class AppTheme
{
  AppTheme._();
  
  static ThemeData lightTheme()
  {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.kWhite,
      textTheme:  AppTextTheme.lightTextTheme(),

      cardColor: AppColors.kWhite,

      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: AppBorders.buttonBorder10,
          borderSide: BorderSide(color: AppColors.kSocailButtonBorder, width: 1.w,),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kSocailButtonBorder, width: 1.w),
          borderRadius: AppBorders.buttonBorder10,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kSocailButtonBorder, width: 1.w),
          borderRadius: AppBorders.buttonBorder10,
        ),
      ),
    );
  }

  static ThemeData darkTheme()
  {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.kDarkScaffoldBGColor,
      textTheme: AppTextTheme.darkTextTheme(),
      
      cardColor: AppColors.kDarkScaffoldBGColor,
      //primaryColorLight: AppColors.kDarkScaffoldBGColor,
      

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.kTextFormFieldFillDark,
        //hintStyle: AppStyles.textStyle12(),

        focusedBorder: OutlineInputBorder(
          borderRadius: AppBorders.buttonBorder10,
          borderSide: BorderSide(color: AppColors.kTextFormFieldFillDark, width: AppSizes.size1.w,),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kTextFormFieldFillDark, width: AppSizes.size1.w),
          borderRadius: AppBorders.buttonBorder10,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kTextFormFieldFillDark, width: AppSizes.size1.w),
          borderRadius: AppBorders.buttonBorder10,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(AppColors.kPrimaryBlue),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: AppBorders.buttonBorder10,
              side: BorderSide(width: AppSizes.size1.w),
            ),
          ),
        ),
      ),

      tabBarTheme: TabBarTheme(
        //dividerHeight: ,
        //dividerColor: ,
        //unselectedLabelStyle: ,
        //indicator: ,
        //overlayColor: WidgetStateProperty.resolveWith<Color>(),
        labelColor: AppColors.kAuthTab,
        unselectedLabelColor: AppColors.kSecondary,
        //labelStyle: AppStyles.textStyle14(fontWeight: AppFontWeights.semiBoldWeight, textColor: AppColors.kAuthTab,),
      ),

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
