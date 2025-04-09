import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/app_borders.dart';
import 'color_system/colors_manager/app_colors.dart';
import 'app_sizes.dart';

class AppTheme
{
  AppTheme._();
  
  static ThemeData lightTheme()
  {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.color.kSecondaryWhite,
      cardColor: AppColors.color.kSecondaryWhite,

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.color.kFormButtonsFill,
        focusedBorder: OutlineInputBorder(
          borderRadius: AppBorders.buttonBorder10,
          borderSide: BorderSide(color: AppColors.color.kFormButtonsBorders, width: AppBorderWidths.width1,),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.color.kFormButtonsBorders, width: AppBorderWidths.width1),
          borderRadius: AppBorders.buttonBorder10,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.color.kFormButtonsBorders, width: AppBorderWidths.width1),
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
      scaffoldBackgroundColor: AppColors.color.kPrimaryDark,
      
      cardColor: AppColors.color.kPrimaryDark,
      //primaryColorLight: AppColors.color.kDarkScaffoldBGColor,
      

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.color.kFormButtonsBordersFillDark,
        //hintStyle: AppStyles.textStyle12(),

        focusedBorder: OutlineInputBorder(
          borderRadius: AppBorders.buttonBorder10,
          borderSide: BorderSide(color: AppColors.color.kFormButtonsBordersFillDark, width: AppSizes.size1.w,),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.color.kFormButtonsBordersFillDark, width: AppSizes.size1.w),
          borderRadius: AppBorders.buttonBorder10,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.color.kFormButtonsBordersFillDark, width: AppSizes.size1.w),
          borderRadius: AppBorders.buttonBorder10,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: AppBorders.buttonBorder10,
              side: BorderSide(
                color: AppColors.color.kTransparent,
                width: AppBorderWidths.width1,
              ),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(AppColors.color.kPrimaryBlue,),
          overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
          splashFactory: NoSplash.splashFactory,
          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
          alignment: Alignment.center,
        ),
      ),


      tabBarTheme: TabBarTheme(
        //dividerHeight: ,
        //dividerColor: ,
        //unselectedLabelStyle: ,
        //indicator: ,
        //overlayColor: WidgetStateProperty.resolveWith<Color>(),
        labelColor: AppColors.color.kTabBar,
        unselectedLabelColor: AppColors.color.kSecondarySemiGreyText,
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