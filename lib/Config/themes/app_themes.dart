import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/themes/app_colors.dart';
import 'package:test_app/config/themes/font_system/app_font_sizes.dart';
import 'package:test_app/config/themes/font_system/app_font_weights.dart';
import 'package:test_app/config/themes/font_system/app_fonts.dart';
import 'package:test_app/core/constants/app_borders.dart';
import 'package:test_app/core/constants/app_styles.dart';

class AppTheme
{
  AppTheme._();
  
  static ThemeData lightTheme()
  {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.kWhite,
      //textTheme: buildTextTheme(Colors.black),

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
      //textTheme: buildTextTheme(Colors.white),
      
      cardColor: AppColors.kDarkScaffoldBGColor,
      //primaryColorLight: AppColors.kDarkScaffoldBGColor,
      

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.kTextFormFieldFillDark,
        //hintStyle: AppStyles.textStyle12(),

        focusedBorder: OutlineInputBorder(
          borderRadius: AppBorders.buttonBorder10,
          borderSide: BorderSide(color: AppColors.kTextFormFieldFillDark, width: 1.w,),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kTextFormFieldFillDark, width: 1.w),
          borderRadius: AppBorders.buttonBorder10,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kTextFormFieldFillDark, width: 1.w),
          borderRadius: AppBorders.buttonBorder10,
        ),
      ),


      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(AppColors.kPrimarBlue),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: AppBorders.buttonBorder10,
              side: BorderSide(width: 1.w),
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

  static TextStyle fontStyle({
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily, 
    Color? fontColor,
    TextOverflow? overflow, 
    TextDecoration? decoration,
  })
  {
    return TextStyle(
      fontSize: fontSize ?? AppFontSizes.medium,
      fontWeight: fontWeight ?? AppFontWeights.blackWeight,
      fontFamily: fontFamily ?? AppFontFamilies.roboto,
      color: fontColor ?? AppColors.kPrimarBlue,
      overflow: overflow ?? TextOverflow.ellipsis,
      decoration: decoration ?? TextDecoration.none,
    );
  }

  static TextTheme textTheme({
  double? fontSize,
  FontWeight? fontWeight,
  String? fontFamily, 
  Color? textColor, 
  TextOverflow? overflow, 
  TextDecoration? decoration,
  })
  {
    return TextTheme(

      // /// FS = [24], FW = [w700], FC = [Color_000000], FF = [Roboto]
      // titleLarge: fontStyle(
      //   fontSize: fontSize ?? AppFontSizes.xXXXLarge,
      //   fontWeight: fontWeight ?? AppFontWeights.boldWeight,
      //   fontFamily: fontFamily ?? AppFontFamilies.roboto,
      //   fontColor: textColor ?? AppColors.korLoginWithColor,
      //   overflow: overflow ?? TextOverflow.ellipsis,
      //   decoration: decoration ?? TextDecoration.none,
      // ),

      /// FS = [22], FW = [w700], FC = [], FF = []
      titleMedium: fontStyle(
        fontSize: fontSize ?? AppFontSizes.xXXLarge,
        fontWeight: fontWeight ?? AppFontWeights.boldWeight,
        fontFamily: fontFamily ?? AppFontFamilies.somar,
        fontColor: textColor ?? AppColors.kWhite,
        overflow: overflow ?? TextOverflow.ellipsis,
        decoration: decoration ?? TextDecoration.none,
      ),

      /// FS = [20], FW = [w700], FC = [000000], FF = [Roboto]
      titleSmall: fontStyle( //DONE
        fontSize: fontSize ?? AppFontSizes.xXLarge,
        fontWeight: fontWeight ?? AppFontWeights.boldWeight,
        fontFamily: fontFamily ?? AppFontFamilies.roboto,
        fontColor: textColor ?? AppColors.korLoginWithColor,
        overflow: overflow ?? TextOverflow.ellipsis,
        decoration: decoration ?? TextDecoration.none,
      ),

      //----------------------------------------------------------------//

      /// FS = [18], FW = [w600], FC = [FFFFFF], FF = [Roboto]
      bodyLarge: fontStyle( //DONE
        fontSize: fontSize ?? AppFontSizes.xLarge,
        fontWeight: fontWeight ?? AppFontWeights.semiBoldWeight,
        fontFamily: fontFamily ?? AppFontFamilies.roboto,
        fontColor: textColor ?? AppColors.kWhite,
        overflow: overflow ?? TextOverflow.ellipsis,
        decoration: decoration ?? TextDecoration.none,
      ),

      /// FS = [16], FW = [w600], FC = [9E9E9E], FF = [Roboto]
      bodyMedium: fontStyle( //DONE
        fontSize: fontSize ?? AppFontSizes.large,
        fontWeight: fontWeight ?? AppFontWeights.regularWeight,
        fontFamily: fontFamily ?? AppFontFamilies.roboto,
        fontColor: textColor ?? AppColors.kSecondary,
        overflow: overflow ?? TextOverflow.ellipsis,
        decoration: decoration ?? TextDecoration.none,
      ),

      /// FS = [14], FW = [w700], FC = [FFFFFF], FF = [Roboto]
      bodySmall: fontStyle( //DONE
        fontSize: fontSize ?? AppFontSizes.medium,
        fontWeight: fontWeight ?? AppFontWeights.boldWeight,
        fontFamily: fontFamily ?? AppFontFamilies.roboto,
        fontColor: textColor ?? AppColors.kWhite,
        overflow: overflow ?? TextOverflow.ellipsis,
        decoration: decoration ?? TextDecoration.none,
      ),

      //----------------------------------------------------------------//

      /// FS = [13], FW = [w700], FC = [2E2E2E], FF = [Roboto]
      labelLarge: fontStyle( //DONE
        fontSize: fontSize ?? AppFontSizes.semiSmall,
        fontWeight: fontWeight ?? AppFontWeights.semiBoldWeight,
        fontFamily: fontFamily ?? AppFontFamilies.roboto,
        fontColor: textColor ?? AppColors.kQuaternaryText,
        overflow: overflow ?? TextOverflow.ellipsis,
        decoration: decoration ?? TextDecoration.none,
      ),

      /// FS = [12], FW = [w700], FC = [9E9E9E], FF = [Roboto]
      labelMedium: fontStyle( //DONE
        fontSize: fontSize ?? AppFontSizes.small,
        fontWeight: fontWeight ?? AppFontWeights.boldWeight,
        fontFamily: fontFamily ?? AppFontFamilies.roboto,
        fontColor: textColor ?? AppColors.kSecondary,
        overflow: overflow ?? TextOverflow.ellipsis,
        decoration: decoration ?? TextDecoration.none,
      ),

      // /// FS = [10], FW = [w600], FC = [000000], FF = [Roboto]
      // labelSmall: fontStyle(
      //   fontSize: fontSize ?? AppFontSizes.xXSmall,
      //   fontWeight: fontWeight ?? AppFontWeights.semiBoldWeight,
      //   fontFamily: fontFamily ?? AppFontFamilies.roboto,
      //   fontColor: textColor ?? AppColors.korLoginWithColor,
      //   overflow: overflow ?? TextOverflow.ellipsis,
      //   decoration: decoration ?? TextDecoration.none,
      // ),
    );

    //----------------------------------------------------------------//
  }



}
