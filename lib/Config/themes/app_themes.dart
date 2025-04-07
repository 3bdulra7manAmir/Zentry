import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/app_borders.dart';
import 'app_colors/app_colors.dart';
import 'app_sizes.dart';

class AppTheme
{
  AppTheme._();
  
  static ThemeData lightTheme()
  {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.color.kWhite,
      cardColor: AppColors.color.kWhite,

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.color.kTextFormFieldFill,

        focusedBorder: OutlineInputBorder(
          borderRadius: AppBorders.buttonBorder10,
          borderSide: BorderSide(color: AppColors.color.kTextFormFieldBorder, width: 1.w,),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.color.kTextFormFieldBorder, width: 1.w),
          borderRadius: AppBorders.buttonBorder10,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.color.kTextFormFieldBorder, width: 1.w),
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
      scaffoldBackgroundColor: AppColors.color.kDarkScaffoldBGColor,
      
      cardColor: AppColors.color.kDarkScaffoldBGColor,
      //primaryColorLight: AppColors.color.kDarkScaffoldBGColor,
      

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.color.kTextFormFieldFillDark,
        //hintStyle: AppStyles.textStyle12(),

        focusedBorder: OutlineInputBorder(
          borderRadius: AppBorders.buttonBorder10,
          borderSide: BorderSide(color: AppColors.color.kTextFormFieldFillDark, width: AppSizes.size1.w,),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.color.kTextFormFieldFillDark, width: AppSizes.size1.w),
          borderRadius: AppBorders.buttonBorder10,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.color.kTextFormFieldFillDark, width: AppSizes.size1.w),
          borderRadius: AppBorders.buttonBorder10,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(AppColors.color.kPrimaryBlue),
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
        labelColor: AppColors.color.kAuthTab,
        unselectedLabelColor: AppColors.color.kSecondary,
        //labelStyle: AppStyles.textStyle14(fontWeight: AppFontWeights.semiBoldWeight, textColor: AppColors.color.kAuthTab,),
      ),

      // appBarTheme: AppBarTheme(
      //   elevation: 0,
      //   centerTitle: true,
      //   scrolledUnderElevation: 0,
      //   backgroundColor: AppColors.color.,
      //   systemOverlayStyle: SystemUiOverlayStyle.dark,
      //   iconTheme: IconThemeData(color: AppColors.color.),
      //   titleTextStyle: StylesManager.extraBold(
      //     fontSize: AppSizes.size,
      //     color: AppColors.color.,
      //   ),
      // ),
    );
  }

  

}
