import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/constants/app_margins.dart';

import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class CompleteProfileCard extends StatelessWidget
{
  const CompleteProfileCard({super.key,});
  @override
  Widget build(BuildContext context)
  {
    return Stack(
      clipBehavior: Clip.none,
      children:
      [
        Container(
          width: 326.w,
          height: 168.h,
          margin: AppMargins.horizontal16,
          decoration: BoxDecoration(
            color: AppColors.color.kGrey002,
            borderRadius: AppBordersRadiuses.circular12,
            border: AppFullBorders.completeProfileCard,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Image.asset(AppAssets.iconsPNG.profileCamera),
                AppSizes.size10.verticalSpace,
                Text(AppLocalizations.of(context).addCoverPhoto, style: AppStyles.textStyle10(
                  fontColor: AppColors.color.kGreyText002,
                  fontWeight: AppFontWeights.semiBoldWeight
                ),),
              ],
            ),
          ),
        ), 
        Positioned(
          left: 0,
          right: 150.w,
          bottom: -15.h,
          child: Image.asset(AppAssets.iconsPNG.profileImagePicker, width: 38.w, height: 38.h, fit: BoxFit.contain,),
        ),
      ],
    );
  }
}