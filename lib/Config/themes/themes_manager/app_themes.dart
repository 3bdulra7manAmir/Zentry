import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/app_styles.dart';
import 'app_themes_styles.dart';
import '../color_system/app_colors.dart';

class AppTheme
{
  AppTheme._();

  static ThemeData lightTheme()
  {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.color.kWhite001,
      cardColor: AppColors.color.kWhite001,

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.color.kGrey002,
        focusedBorder: AppThemesStyles.inputBorderLight,
        enabledBorder: AppThemesStyles.inputBorderLight,
        errorBorder: AppThemesStyles.inputBorderLight,
        disabledBorder: AppThemesStyles.inputBorderLight,
      ),

      elevatedButtonTheme: AppThemesStyles.elevatedButtonTheme,
      tabBarTheme: AppThemesStyles.tabBarTheme,
      appBarTheme: AppBarTheme(
        
        backgroundColor: AppColors.color.kGrey004,
        centerTitle: true,
      ),

      cupertinoOverrideTheme:  CupertinoThemeData(
        textTheme: CupertinoTextThemeData(pickerTextStyle: AppStyles.textStyle26(),),
      ),
    );
  }

  static ThemeData darkTheme()
  {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.color.kDark002,
      cardColor: AppColors.color.kDark002,

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.color.kDark001,
        focusedBorder: AppThemesStyles.inputBorderDark,
        enabledBorder: AppThemesStyles.inputBorderDark,
        errorBorder: AppThemesStyles.inputBorderDark,
        disabledBorder: AppThemesStyles.inputBorderDark,
      ),

      elevatedButtonTheme: AppThemesStyles.elevatedButtonTheme,
      tabBarTheme: AppThemesStyles.tabBarTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.color.kGrey004,
        centerTitle: true,
      ),

      cupertinoOverrideTheme:  CupertinoThemeData(
        textTheme: CupertinoTextThemeData(pickerTextStyle: AppStyles.textStyle26(),),
      ),
    );
  }
}

