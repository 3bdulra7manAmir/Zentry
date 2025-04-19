import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/app_borders.dart';
import '../../core/constants/app_styles.dart';
import 'color_system/colors_manager/app_colors.dart';
import '../../core/constants/app_sizes.dart';
import 'font_system/app_font_weights.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.color.kSecondaryWhite,
      cardColor: AppColors.color.kSecondaryWhite,

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.color.kFormButtonsFill,
        focusedBorder: inputBorderLight,
        enabledBorder: inputBorderLight,
        errorBorder: inputBorderLight,
        disabledBorder: inputBorderLight,
      ),

      elevatedButtonTheme: elevatedButtonTheme,
      tabBarTheme: tabBarTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.color.kAppBarBG,
        centerTitle: true,
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.color.kPrimaryDark,
      cardColor: AppColors.color.kPrimaryDark,

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.color.kFormButtonsBordersFillDark,
        focusedBorder: inputBorderDark,
        enabledBorder: inputBorderDark,
        errorBorder: inputBorderDark,
        disabledBorder: inputBorderDark,
      ),

      elevatedButtonTheme: elevatedButtonTheme,
      tabBarTheme: tabBarTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.color.kAppBarBG,
        centerTitle: true,
      ),
    );
  }
}

InputBorder? inputBorderLight = OutlineInputBorder(
  borderRadius: AppBorders.buttonBorder10,
  borderSide: BorderSide(
    color: AppColors.color.kFormButtonsBorders,
    width: AppBorderWidths.width1,
  ),
);

InputBorder? inputBorderDark = OutlineInputBorder(
  borderRadius: AppBorders.buttonBorder10,
  borderSide: BorderSide(
    color: AppColors.color.kFormButtonsBordersFillDark,
    width: AppSizes.size1.w,
  ),
);

ElevatedButtonThemeData? elevatedButtonTheme = ElevatedButtonThemeData(
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
    backgroundColor: MaterialStateProperty.all<Color>(
      AppColors.color.kPrimaryBlue,
    ),
    overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
    splashFactory: NoSplash.splashFactory,
    shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
    elevation: MaterialStateProperty.all(0),
    alignment: Alignment.center,
  ),
);

Object? tabBarTheme = TabBarTheme(
  indicatorSize: TabBarIndicatorSize.tab,
  labelColor: AppColors.color.kTabBar,
  labelStyle: AppStyles.textStyle14(
    fontWeight: AppFontWeights.semiBoldWeight,
    textColor: AppColors.color.kTabBar,
  ),
  unselectedLabelColor: AppColors.color.kSecondarySemiGreyText,
  indicatorColor: AppColors.color.kTabBar,
);
