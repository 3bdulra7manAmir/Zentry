import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/themes/app_colors.dart';
import 'package:test_app/config/themes/font_system/app_font_weight.dart';
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
          backgroundColor: MaterialStateProperty.all<Color>(AppColors.kPrimaryBlue),
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
        unselectedLabelColor: AppColors.kSecondaryText,
        labelStyle: AppStyles.textStyle14(fontWeight: AppFontWeights.w600, textColor: AppColors.kAuthTab,),
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

  static TextStyle textStyle({Color? textColor, FontWeight? textFontWeight, String? textFontFamily, double? textFontSize})
  {
    return TextStyle(
      fontWeight: textFontWeight,
      fontFamily: textFontFamily ?? 'Roboto',
      fontSize: textFontSize,
      color: textColor,
      overflow: TextOverflow.ellipsis,
      decoration: TextDecoration.none,
    );
  }

  static TextTheme buildTextTheme({Color? textColor, FontWeight? fontWeight, String? fontFamily, double? fontSize})
  {
    return TextTheme(
      /// FS = [24], FW = [w400], FC = [Color_5D5D5D], FF = [Roboto]
      headlineSmall: textStyle(textColor: textColor, textFontWeight: fontWeight, textFontFamily: fontFamily, textFontSize: fontSize),
      
      /// FS = [22], FW = [w500], FC = [Color_5D5D5D], FF = [Roboto]
      titleLarge: textStyle(textColor: textColor, textFontWeight: fontWeight, textFontFamily: fontFamily, textFontSize: fontSize),
      
      /// FS = [16], FW = [w400], FC = [Color_5D5D5D], FF = [Roboto]
      titleMedium: textStyle(textColor: textColor, textFontWeight: fontWeight, textFontFamily: fontFamily, textFontSize: fontSize),

      /// FS = [14], FW = [w500], FC = [Color_5D5D5D], FF = [Roboto]
      titleSmall: textStyle(textColor: textColor, textFontWeight: fontWeight, textFontFamily: fontFamily, textFontSize: fontSize),

      /// FS = [16], FW = [w400], FC = [Color_5D5D5D], FF = [Roboto]
      bodyLarge: textStyle(textColor: textColor, textFontWeight: fontWeight, textFontFamily: fontFamily, textFontSize: fontSize),

      /// FS = [12], FW = [w400], FC = [Color_5D5D5D], FF = [Roboto]
      bodySmall: textStyle(textColor: textColor, textFontWeight: fontWeight, textFontFamily: fontFamily, textFontSize: fontSize),

      /// FS = [14], FW = [w500], FC = [Color_5D5D5D], FF = [Roboto]
      labelLarge: textStyle(textColor: textColor, textFontWeight: fontWeight, textFontFamily: fontFamily, textFontSize: fontSize),

      /// FS = [12], FW = [w500], FC = [Color_5D5D5D], FF = [Roboto]
      labelMedium: textStyle(textColor: textColor, textFontWeight: fontWeight, textFontFamily: fontFamily, textFontSize: fontSize),

      /// FS = [11], FW = [w500], FC = [Color_5D5D5D], FF = [Roboto]
      labelSmall: textStyle(textColor: textColor, textFontWeight: fontWeight, textFontFamily: fontFamily, textFontSize: fontSize),
    );
  }

}
