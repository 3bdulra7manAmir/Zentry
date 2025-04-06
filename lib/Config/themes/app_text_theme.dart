import 'package:flutter/material.dart';

import 'app_colors/app_colors_.dart';
import 'font_system/app_font_sizes.dart';
import 'font_system/app_font_weights.dart';
import 'font_system/app_fonts.dart';

class AppTextTheme
{

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
        color: fontColor ?? AppColors.kPrimaryBlue,
        overflow: overflow ?? TextOverflow.ellipsis,
        decoration: decoration ?? TextDecoration.none,
      );
  }

  static TextTheme lightTextTheme({
  double? fontSize,
  FontWeight? fontWeight,
  String? fontFamily, 
  Color? textColor, 
  TextOverflow? overflow, 
  TextDecoration? decoration,
  })
  {
    return TextTheme(
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
    );
  }

  //----------------------------------------------------------------//
  
  static TextTheme darkTextTheme({
  double? fontSize,
  FontWeight? fontWeight,
  String? fontFamily, 
  Color? textColor, 
  TextOverflow? overflow, 
  TextDecoration? decoration,
  })
  {
    return TextTheme(
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

      /// FS = [13], FW = [w700], FC = [2E2E2E], FF = [Roboto]
      labelLarge: fontStyle( //DONE
        fontSize: fontSize ?? AppFontSizes.semiSmall,
        fontWeight: fontWeight ?? AppFontWeights.boldWeight,
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
    );
  }
}

