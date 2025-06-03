import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/app_images.dart';
import '../helpers/app_providers.dart';

class AppImages
{
  AppImages._();

  static Image arrowImage(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    final isArabic = provider.localeController.selectedLanguageIndex == 0;
    final isDark = provider.currentThemeMode == ThemeMode.dark;

    final assetPath = isArabic ? (isDark ? AppAssets.iconsPNG.headerArrowLeft : AppAssets.iconsPNG.formArrowLeft)
    : (isDark ? AppAssets.iconsPNG.headerArrowRight : AppAssets.iconsPNG.formArrowRight);

    return Image.asset(assetPath);
  }

  static Image appBarBackArrow(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    final isArabic = provider.localeController.selectedLanguageIndex == 0;
    final isDark = provider.currentThemeMode == ThemeMode.dark;

    final assetPath = isArabic ? (isDark ? AppAssets.iconsPNG.headerArrowRight : AppAssets.iconsPNG.appBarBackRight)
    : (isDark ? AppAssets.iconsPNG.headerArrowLeft : AppAssets.iconsPNG.appBarBackLeft);

    return Image.asset(assetPath);
  }

  static String platformLogo(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    final isDark = provider.currentThemeMode == ThemeMode.dark;

    return isDark ? AppAssets.iconsPNG.loginAppleDark : AppAssets.iconsPNG.loginApple;
  }

  static String appBarBackSmartArrow(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    final isArabic = provider.localeController.selectedLanguageIndex == 0;
    final isDark = provider.currentThemeMode == ThemeMode.dark;

    return isArabic ? (isDark ? AppAssets.iconsPNG.headerArrowLeft : AppAssets.iconsPNG.appBarBackRight)
    : (isDark ? AppAssets.iconsPNG.headerArrowRight : AppAssets.iconsPNG.appBarBackRight);
  }

  static String appBarBackSmartArrow2(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    final isArabic = provider.localeController.selectedLanguageIndex == 0;
    final isDark = provider.currentThemeMode == ThemeMode.dark;

    return isArabic ? (isDark ? AppAssets.iconsPNG.headerArrowLeft : AppAssets.iconsPNG.appBarBackRight)
    : (isDark ? AppAssets.iconsPNG.headerArrowRight : AppAssets.iconsPNG.formArrowRight);
  }

  static String appBarBackSmartArrow3(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    final isArabic = provider.localeController.selectedLanguageIndex == 0;
    final isDark = provider.currentThemeMode == ThemeMode.dark;

    return isArabic ? (isDark ? AppAssets.iconsPNG.headerArrowLeft : AppAssets.iconsPNG.formArrowLeft)
    : (isDark ? AppAssets.iconsPNG.headerArrowRight : AppAssets.iconsPNG.formArrowRight);
  }

}
