import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';


void showActionsBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.topOnly10),
    builder: (BuildContext context)
    {
      return Padding(
        padding: AppPadding.horizontal22,
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
                borderRadius: AppBordersRadiuses.circular100,
              ),
            ),
            AppSizes.size17.verticalSpace,
            Row(
              children:
              [
                Image.asset(AppAssets.iconsPNG.actionEye),
                AppSizes.size16.horizontalSpace,
                Text(AppLocalizations.of(context).view, style: AppStyles.textStyle14(fontColor: AppColors.color.kBlack001),),
                const Spacer(),
                Image.asset(AppAssets.iconsPNG.actionArrowLeft),
              ],
            ),
            AppSizes.size50.verticalSpace,
            Row(
              children:
              [
                Image.asset(AppAssets.iconsPNG.actionReplay),
                AppSizes.size16.horizontalSpace,
                Text(AppLocalizations.of(context).replay, style: AppStyles.textStyle14(fontColor: AppColors.color.kBlack001),),
                const Spacer(),
                Image.asset(AppAssets.iconsPNG.actionArrowLeft),
              ],
            ),
            AppSizes.size50.verticalSpace,
            Row(
              children:
              [
                Image.asset(AppAssets.iconsPNG.actionBlock),
                AppSizes.size16.horizontalSpace,
                Text(AppLocalizations.of(context).block, style: AppStyles.textStyle14(fontColor: AppColors.color.kBlack001),),
                const Spacer(),
                Image.asset(AppAssets.iconsPNG.actionArrowLeft),
              ],
            ),
            AppSizes.size50.verticalSpace,
            Row(
              children:
              [
                Image.asset(AppAssets.iconsPNG.actionFavorite),
                AppSizes.size16.horizontalSpace,
                Text(AppLocalizations.of(context).favourite, style: AppStyles.textStyle14(fontColor: AppColors.color.kBlack001),),
                const Spacer(),
                Image.asset(AppAssets.iconsPNG.actionFavorite),
              ],
            ),
            AppSizes.size45.verticalSpace,
          ],
        ),
      );
    },
  );
}
