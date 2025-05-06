import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/constants/app_styles.dart';
import '../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../core/constants/app_borders.dart';
import '../../core/constants/app_sizes.dart';

void showActionsBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.followBusinessPageBorder),
    builder: (BuildContext context)
    {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
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
                color: AppColors.color.kAgainTextDark,
                borderRadius: AppBorders.kCardRadius100,
              ),
            ),
            AppSizes.size17.verticalSpace,

            Row(
              children:
              [
                Image.asset("assets/icons/Actions/Eye.png"),
                AppSizes.size16.horizontalSpace,
                Text("View", style: AppStyles.textStyle14(fontColor: AppColors.color.kSenaryTotalBlackText),),
                const Spacer(),
                Image.asset("assets/icons/Actions/Left_Black_Arrow.png"),
              ],
            ),
            AppSizes.size50.verticalSpace,
            Row(
              children:
              [
                Image.asset("assets/icons/Actions/Replay.png"),
                AppSizes.size16.horizontalSpace,
                Text("Replay", style: AppStyles.textStyle14(fontColor: AppColors.color.kSenaryTotalBlackText),),
                const Spacer(),
                Image.asset("assets/icons/Actions/Left_Black_Arrow.png"),
              ],
            ),

            AppSizes.size50.verticalSpace,
            Row(
              children:
              [
                Image.asset("assets/icons/Actions/Block.png"),
                AppSizes.size16.horizontalSpace,
                Text("Block", style: AppStyles.textStyle14(fontColor: AppColors.color.kSenaryTotalBlackText),),
                const Spacer(),
                Image.asset("assets/icons/Actions/Left_Black_Arrow.png"),
              ],
            ),

            AppSizes.size50.verticalSpace,
            Row(
              children:
              [
                Image.asset("assets/icons/Actions/Favourite.png"),
                AppSizes.size16.horizontalSpace,
                Text("Favourite", style: AppStyles.textStyle14(fontColor: AppColors.color.kSenaryTotalBlackText),),
                const Spacer(),
                Image.asset("assets/icons/Actions/Left_Black_Arrow.png"),
              ],
            ),
            AppSizes.size45.verticalSpace,

          ],
        ),
      );
    },
  );
}
