import 'package:flutter/material.dart';
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
        focusedBorder: AppLightStyles.inputBorderLight,
        enabledBorder: AppLightStyles.inputBorderLight,
        errorBorder: AppLightStyles.inputBorderLight,
        disabledBorder: AppLightStyles.inputBorderLight,
      ),

      elevatedButtonTheme: AppLightStyles.elevatedButtonTheme,
      tabBarTheme: AppLightStyles.tabBarTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.color.kGrey004,
        centerTitle: true,
      ),

      cupertinoOverrideTheme: AppLightStyles.cupertinoLightOverrideTheme
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
        focusedBorder: AppDarkStyles.inputBorderDark,
        enabledBorder: AppDarkStyles.inputBorderDark,
        errorBorder: AppDarkStyles.inputBorderDark,
        disabledBorder: AppDarkStyles.inputBorderDark,
      ),

      elevatedButtonTheme: AppDarkStyles.elevatedButtonTheme,
      tabBarTheme: AppDarkStyles.tabBarTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.color.kGrey004,
        centerTitle: true,
      ),

    cupertinoOverrideTheme: AppDarkStyles.cupertinoDarkOverrideTheme
    );
  }
}

