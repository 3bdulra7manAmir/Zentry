import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/app_borders.dart';
import '../../../core/constants/app_borders_styles.dart';
import '../../../core/constants/app_styles.dart';
import '../color_system/app_colors.dart';
import '../font_system/font_weights.dart';

abstract class AppLightStyles {
  AppLightStyles._();

  static InputBorder get inputBorderLight => OutlineInputBorder(
        borderRadius: AppBordersRadiuses.circular.largeButton,
        borderSide: BorderSide(
          color: AppColors.color.kGrey001,
          width: AppBorderWidths.thin,
        ),
      );

  static ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: AppBordersRadiuses.circular.largeButton,
              side: BorderSide(
                color: AppColors.color.kTransparent,
                width: AppBorderWidths.thin,
              ),
            ),
          ),
          backgroundColor: WidgetStateProperty.all<Color>(AppColors.color.kBlue001),
          overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
          splashFactory: NoSplash.splashFactory,
          shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
          elevation: WidgetStateProperty.all(0),
          alignment: Alignment.center,
        ),
      );

  static TabBarThemeData get tabBarTheme => TabBarThemeData(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: AppColors.color.kOrange001,
        labelStyle: AppStyles.textStyle14(
          fontWeight: AppFontWeights.semiBoldWeight,
          fontColor: AppColors.color.kOrange001,
        ),
        unselectedLabelColor: AppColors.color.kGreyText002,
        indicatorColor: AppColors.color.kOrange001,
      );

  static NoDefaultCupertinoThemeData get cupertinoLightOverrideTheme => CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          pickerTextStyle: AppStyles.textStyle26(),
        ),
      );
}


abstract class AppDarkStyles {
  AppDarkStyles._();

  static InputBorder get inputBorderLight => OutlineInputBorder(
        borderRadius: AppBordersRadiuses.circular.largeButton,
        borderSide: BorderSide(
          color: AppColors.color.kGrey001,
          width: AppBorderWidths.thin,
        ),
      );

  static InputBorder get inputBorderDark => OutlineInputBorder(
        borderRadius: AppBordersRadiuses.circular.largeButton,
        borderSide: BorderSide(
          color: AppColors.color.kDark001,
          width: AppBorderWidths.thin,
        ),
      );

  static ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: AppBordersRadiuses.circular.largeButton,
              side: BorderSide(
                color: AppColors.color.kTransparent,
                width: AppBorderWidths.thin,
              ),
            ),
          ),
          backgroundColor: WidgetStateProperty.all<Color>(AppColors.color.kBlue001),
          overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
          splashFactory: NoSplash.splashFactory,
          shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
          elevation: WidgetStateProperty.all(0),
          alignment: Alignment.center,
        ),
      );

  static TabBarThemeData get tabBarTheme => TabBarThemeData(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: AppColors.color.kOrange001,
        labelStyle: AppStyles.textStyle14(
          fontWeight: AppFontWeights.semiBoldWeight,
          fontColor: AppColors.color.kOrange001,
        ),
        unselectedLabelColor: AppColors.color.kGreyText002,
        indicatorColor: AppColors.color.kOrange001,
      );

  static NoDefaultCupertinoThemeData get cupertinoDarkOverrideTheme => CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          pickerTextStyle: AppStyles.textStyle12(
            fontColor: AppColors.color.kWhite003,
          ),
        ),
      );
}
