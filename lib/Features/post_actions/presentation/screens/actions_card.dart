import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';

void showActionsBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    //isScrollControlled: true,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.followBusinessPageBorder),
    builder: (BuildContext context)
    {
      return Padding(
        padding: AppPadding.kActionsCardPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children:
          [
            AppSizes.size9.verticalSpace,
            Container(
              width: 44.w,
              height: 5.h,
              decoration: BoxDecoration(
                color: AppColors.color.kBlack005,
                borderRadius: AppBorders.kCardRadius100,
              ),
            ),
            AppSizes.size17.verticalSpace,

            Row(
              children:
              [
                Image.asset(AppAssets.iconsPNG.actionEyeCardPNG),
                AppSizes.size16.horizontalSpace,
                Text(AppStrings.view, style: AppStyles.textStyle14(fontColor: AppColors.color.kBlack001),),
                const Spacer(),
                Image.asset(AppAssets.iconsPNG.actionsLeftBlackArrowPNG),
              ],
            ),
            AppSizes.size50.verticalSpace,
            Row(
              children:
              [
                Image.asset(AppAssets.iconsPNG.actionsReplayPNG),
                AppSizes.size16.horizontalSpace,
                Text(AppStrings.replay, style: AppStyles.textStyle14(fontColor: AppColors.color.kBlack001),),
                const Spacer(),
                Image.asset(AppAssets.iconsPNG.actionsLeftBlackArrowPNG),
              ],
            ),

            AppSizes.size50.verticalSpace,
            Row(
              children:
              [
                Image.asset(AppAssets.iconsPNG.actionsBlockPNG),
                AppSizes.size16.horizontalSpace,
                Text(AppStrings.block, style: AppStyles.textStyle14(fontColor: AppColors.color.kBlack001),),
                const Spacer(),
                Image.asset(AppAssets.iconsPNG.actionsLeftBlackArrowPNG),
              ],
            ),

            AppSizes.size50.verticalSpace,
            Row(
              children:
              [
                Image.asset(AppAssets.iconsPNG.actionsFavouritePNG),
                AppSizes.size16.horizontalSpace,
                Text(AppStrings.favourite, style: AppStyles.textStyle14(fontColor: AppColors.color.kBlack001),),
                const Spacer(),
                Image.asset(AppAssets.iconsPNG.actionsFavouritePNG),
              ],
            ),
            AppSizes.size45.verticalSpace,

          ],
        ),
      );
    },
  );
}
