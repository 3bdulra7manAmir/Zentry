import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_images.dart';
import '../../../../../../core/constants/app_paddings.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/widgets/app_divider.dart';
import '../../../../../../core/widgets/app_modal_bottom_sheet.dart';

void showPostOptionsBottomSheet(BuildContext context)
{
  showAppBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.topOnly16),
    builder: (BuildContext context)
    {
      return Padding(
        padding: AppPadding.directional.postOptions,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children:
          [
            AppSizes.size27.verticalSpace,
            Row(
              children:
              [
                Image.asset(AppAssets.iconsPNG.postSave),
                AppSizes.size12.horizontalSpace,
                Text(AppLocalizations.of(context).save, style: AppStyles.textStyle14(fontColor: AppColors.color.kBlack001),),
                const Spacer(),
                Text(AppLocalizations.of(context).seeAll, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kBlue003),)
              ],
            ),
            AppSizes.size22.verticalSpace,
            const AppDivider(),
            AppSizes.size22.verticalSpace,
            Row(
              children:
              [
                Image.asset(AppAssets.iconsPNG.postCopy),
                AppSizes.size12.horizontalSpace,
                Text(AppLocalizations.of(context).copyLinks, style: AppStyles.textStyle14(fontColor: AppColors.color.kBlack001),),
              ],
            ),
            AppSizes.size22.verticalSpace,
            const AppDivider(),
            AppSizes.size22.verticalSpace,
            Row(
              children:
              [
                Image.asset(AppAssets.iconsPNG.postBill),
                AppSizes.size12.horizontalSpace,
                Text(AppLocalizations.of(context).turnOnNotification, style: AppStyles.textStyle14(fontColor: AppColors.color.kBlack001),),
                const Spacer(),
                Text(AppLocalizations.of(context).seeAll, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kBlue003),)
              ],
            ),
            AppSizes.size22.verticalSpace,
            const AppDivider(),
            AppSizes.size22.verticalSpace,
            Row(
              children:
              [
                Image.asset(AppAssets.iconsPNG.postReport),
                AppSizes.size12.horizontalSpace,
                Text(AppLocalizations.of(context).report, style: AppStyles.textStyle14(fontColor: AppColors.color.kBlack001),),
              ],
            ),
            AppSizes.size32.verticalSpace,
          ],
        ),
      );
    },
  );
}
