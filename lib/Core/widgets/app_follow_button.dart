import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/l10n/generated/app_localizations.dart';
import '../../config/themes/color_system/app_colors.dart';
import '../../config/themes/font_system/font_weights.dart';
import '../constants/app_borders.dart';
import '../constants/app_images.dart';
import '../constants/app_sizes.dart';
import '../constants/app_styles.dart';

class CustomFollowButton extends ConsumerWidget
{
  const CustomFollowButton({
    super.key,
    this.buttonWidth,
    this.buttonHeight,
    this.buttonBorderRadius,
    this.buttonBorderColor,
    this.buttonBorderWidth,
    this.buttonBackgroundColor,
    this.buttonText,
    this.buttonTextStyle,
    this.buttonOnPressed,
    this.buttonPadding,
  });

  final double? buttonWidth;
  final double? buttonHeight;
  final BorderRadiusGeometry? buttonBorderRadius;
  final Color? buttonBorderColor;
  final double? buttonBorderWidth;
  final Color? buttonBackgroundColor;
  final String? buttonText;
  final TextStyle? buttonTextStyle;
  final void Function()? buttonOnPressed;
  final EdgeInsetsGeometry? buttonPadding;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return SizedBox(
      height: buttonHeight ?? 31.h,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(buttonPadding),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: buttonBorderRadius ?? AppBorders.buttonBorder10,
              side: BorderSide(color: buttonBorderColor ?? AppColors.color.kTransparent, width: buttonBorderWidth ?? AppBorderWidths.width1,),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(buttonBackgroundColor ?? AppColors.color.kQuinarySemiBlueText,),
        ),
        onPressed: buttonOnPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children:
          [
            Image.asset(AppAssets.iconsPNG.addButtonPNG),
            AppSizes.size4.horizontalSpace,
            Text(buttonText ?? AppLocalizations.of(context).follow, style: buttonTextStyle ?? AppStyles.textStyle10(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kSecondaryWhite),),
          ],
        ),
      ),
    );
  }
}
