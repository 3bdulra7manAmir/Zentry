import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_app/config/themes/app_colors.dart';

part 'text_color_controller.g.dart';

@riverpod
class TextColorsNotifier extends _$TextColorsNotifier
{
  @override
  TextColors build()
  {
    return _getTextColors(ThemeMode.light); // Default theme
  }

  void updateTheme(ThemeMode mode)
  {
    state = _getTextColors(mode);
  }

  TextColors _getTextColors(ThemeMode mode)
  {
    final isDark = mode == ThemeMode.dark;

    return TextColors(
      primaryReversed: isDark ? AppColors.kWhite : AppColors.kPrimaryText,
      secondaryReversed: isDark ? AppColors.kWhite : AppColors.korLoginWithColor,
      tertiaryReversed: isDark ? AppColors.kReversedColor3 : AppColors.kTertiaryText,
      quaternaryReversed: isDark ? AppColors.kReversedColor4 : AppColors.kRememberColor,
    );
  }
}

/// Holds different text colors for light and dark themes
class TextColors
{
  final Color primaryReversed;
  final Color secondaryReversed;
  final Color tertiaryReversed;
  final Color quaternaryReversed;

  TextColors({required this.primaryReversed, required this.secondaryReversed, required this.tertiaryReversed, required this.quaternaryReversed});
}