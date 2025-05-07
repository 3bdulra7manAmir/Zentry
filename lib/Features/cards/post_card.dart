import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../config/themes/font_system/app_font_weights.dart';
import '../../core/constants/app_borders.dart';
import '../../core/constants/app_images.dart';
import '../../core/constants/app_padding.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/constants/app_strings.dart';
import '../../core/constants/app_styles.dart';

void showPostOptionsBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    //isScrollControlled: true,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.smallCardActionsBorder),
    builder: (BuildContext context)
    {
      return Padding(
        padding: AppPadding.kPostOptionsPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children:
          [
            AppSizes.size27.verticalSpace,
            Row(
              children:
              [
                Image.asset(AppAssets.iconsPNG.savePNG),
                AppSizes.size12.horizontalSpace,
                Text(AppStrings.save, style: AppStyles.textStyle14(fontColor: AppColors.color.kSenaryTotalBlackText),),
                const Spacer(),
                Text(AppStrings.seeAll, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kQuinarySemiBlueText),)
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
                Image.asset(AppAssets.iconsPNG.copyPNG),
                AppSizes.size12.horizontalSpace,
                Text(AppStrings.copyLinks, style: AppStyles.textStyle14(fontColor: AppColors.color.kSenaryTotalBlackText),),
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
                Image.asset(AppAssets.iconsPNG.billPNG),
                AppSizes.size12.horizontalSpace,
                Text(AppStrings.turnOnNotification, style: AppStyles.textStyle14(fontColor: AppColors.color.kSenaryTotalBlackText),),
                const Spacer(),
                Text(AppStrings.seeAll, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kQuinarySemiBlueText),)
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
                Image.asset(AppAssets.iconsPNG.reportPNG),
                AppSizes.size12.horizontalSpace,
                Text(AppStrings.report, style: AppStyles.textStyle14(fontColor: AppColors.color.kSenaryTotalBlackText),),
              ],
            ),
            AppSizes.size32.verticalSpace,
          ],
        ),
      );
    },
  );
}
