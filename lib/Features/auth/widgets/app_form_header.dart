import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/constants/app_images.dart';
import '../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../core/helpers/app_providers.dart';


class FormHeader extends ConsumerWidget
{
  const FormHeader({super.key, this.isText, this.downleftText, this.upperRightText, this.upperRightTextOnTap,});

  final bool? isText;
  final String? downleftText;
  final String? upperRightText;
  final void Function()? upperRightTextOnTap;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return Stack(
        children:
        [
          Container(
            clipBehavior: Clip.none,
            padding: EdgeInsetsDirectional.only(
              start: 28.w,
              end: 17.w,
              top: 20.h,
              bottom: 0,
            ),
            width: double.infinity,
            color: AppColors.color.kPrimaryBlue,
            child: Image.asset(AppAssets.iconsPNG.fullHeaderPNG),
          ),

          (isText ?? false) ? Positioned(
            top: 100.h,
            left: provider.localeState.selectedLanguageIndex == 1 ? 17.w : 0.w,
            right: provider.localeState.selectedLanguageIndex == 1 ? 0.w : 17.w,
            child: Text(downleftText ?? "", style: AppStyles.textStyle18(),)) : const SizedBox.shrink(),

          (isText ?? false) ? Positioned(top: 44.h, right: 17.w,
            child: Row(
              children:
              [
                GestureDetector(
                  onTap: upperRightTextOnTap,
                  child: Text(upperRightText ?? "", style: AppStyles.textStyle13(
                      textColor: AppColors.color.kTertiaryWhiteText,
                      textDecoration: TextDecoration.underline,
                      textDecorationColor: AppColors.color.kTertiaryWhiteText),
                    ),
                  ),
                Image.asset(provider.localeState.selectedLanguageIndex == 0 ? AppAssets.iconsPNG.rightWhiteArrowPNG : AppAssets.iconsPNG.leftWhiteArrowPNG)
              ],
            ),
          ) : const SizedBox.shrink(),
        ],
      );
  }
}