import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/app_images.dart';
import 'app_providers.dart';

class AppImages
{
  AppImages._();

  // Helper method to get theme and locale state
  static (bool isArabic, bool isDark) _getThemeState(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return (
      provider.localeController.selectedLanguageIndex == 0,
      provider.currentThemeMode == ThemeMode.dark
    );
  }

  static Image arrowImage(BuildContext context, WidgetRef ref)
  {
    final (isArabic, isDark) = _getThemeState(context, ref);
    final assetPath = isArabic 
        ? (isDark ? AppAssets.iconsPNG.headerArrowLeft : AppAssets.iconsPNG.formArrowLeft)
        : (isDark ? AppAssets.iconsPNG.headerArrowRight : AppAssets.iconsPNG.formArrowRight);

    return Image.asset(assetPath);
  }

  static Image appBarBackArrow(BuildContext context, WidgetRef ref)
  {
    final (isArabic, isDark) = _getThemeState(context, ref);
    
    final assetPath = isArabic 
        ? (isDark ? AppAssets.iconsPNG.headerArrowRight : AppAssets.iconsPNG.appBarBackRight)
        : (isDark ? AppAssets.iconsPNG.headerArrowLeft : AppAssets.iconsPNG.appBarBackLeft);

    return Image.asset(assetPath);
  }

  static String platformLogo(BuildContext context, WidgetRef ref)
  {
    final (_, isDark) = _getThemeState(context, ref);
    return isDark ? AppAssets.iconsPNG.loginAppleDark : AppAssets.iconsPNG.loginApple;
  }

  static String appBarBackSmartArrow(BuildContext context, WidgetRef ref)
  {
    final (isArabic, isDark) = _getThemeState(context, ref);
    
    return isArabic 
        ? (isDark ? AppAssets.iconsPNG.headerArrowLeft : AppAssets.iconsPNG.appBarBackRight)
        : (isDark ? AppAssets.iconsPNG.headerArrowRight : AppAssets.iconsPNG.appBarBackRight);
  }

  static String appBarBackSmartArrow2(BuildContext context, WidgetRef ref)
  {
    final (isArabic, isDark) = _getThemeState(context, ref);
    
    return isArabic 
        ? (isDark ? AppAssets.iconsPNG.headerArrowLeft : AppAssets.iconsPNG.appBarBackRight)
        : (isDark ? AppAssets.iconsPNG.headerArrowRight : AppAssets.iconsPNG.formArrowRight);
  }

  static String appBarBackSmartArrow3(BuildContext context, WidgetRef ref)
  {
    final (isArabic, isDark) = _getThemeState(context, ref);
    
    return isArabic 
        ? (isDark ? AppAssets.iconsPNG.headerArrowLeft : AppAssets.iconsPNG.formArrowLeft)
        : (isDark ? AppAssets.iconsPNG.headerArrowRight : AppAssets.iconsPNG.formArrowRight);
  }
}