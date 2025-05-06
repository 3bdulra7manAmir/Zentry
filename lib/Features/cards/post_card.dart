import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/themes/font_system/app_font_weights.dart';
import 'package:test_app/core/constants/app_styles.dart';
import '../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../core/constants/app_borders.dart';
import '../../core/constants/app_sizes.dart';

void showPostOptionsBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.smallCardsBorder),
    builder: (BuildContext context)
    {
      return Padding(
        padding: EdgeInsetsDirectional.only(start: 25.w, end: 36.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children:
          [
            AppSizes.size27.verticalSpace,
            Row(
              children:
              [
                Image.asset("assets/icons/Home/Save.png"),
                AppSizes.size12.horizontalSpace,
                Text("Save", style: AppStyles.textStyle14(textColor: AppColors.color.kSenaryTotalBlackText),),
                const Spacer(),
                Text("See All", style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kQuinarySemiBlueText),)
              ],
            ),
            AppSizes.size22.verticalSpace,
            Divider(
              color: AppColors.color.kSemiGrey2, 
              thickness: AppSizes.size1,
              indent: 15,
              endIndent: 15,
            ),

            AppSizes.size22.verticalSpace,
            Row(
              children:
              [
                Image.asset("assets/icons/Home/Copy.png"),
                AppSizes.size12.horizontalSpace,
                Text("Copy Links", style: AppStyles.textStyle14(textColor: AppColors.color.kSenaryTotalBlackText),),
              ],
            ),
            AppSizes.size22.verticalSpace,
            Divider(
              color: AppColors.color.kSemiGrey2, 
              thickness: AppSizes.size1,
              indent: 15,
              endIndent: 15,
            ),

            AppSizes.size22.verticalSpace,
            Row(
              children:
              [
                Image.asset("assets/icons/Home/Bill.png"),
                AppSizes.size12.horizontalSpace,
                Text("Turn on Notification", style: AppStyles.textStyle14(textColor: AppColors.color.kSenaryTotalBlackText),),
                const Spacer(),
                Text("See All", style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kQuinarySemiBlueText),)
              ],
            ),
            AppSizes.size22.verticalSpace,
            Divider(
              color: AppColors.color.kSemiGrey2, 
              thickness: AppSizes.size1,
              indent: 15,
              endIndent: 15,
            ),

            AppSizes.size22.verticalSpace,
            Row(
              children:
              [
                Image.asset("assets/icons/Home/Report.png"),
                AppSizes.size12.horizontalSpace,
                Text("Report", style: AppStyles.textStyle14(textColor: AppColors.color.kSenaryTotalBlackText),),
              ],
            ),
            AppSizes.size32.verticalSpace,
          ],
        ),
      );
    },
  );
}
