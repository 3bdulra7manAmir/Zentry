import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';

class DefaultNotificationCard extends StatelessWidget
{
  const DefaultNotificationCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Card(
      color: AppColors.color.kSecondaryWhite,
      elevation: 1.0,
      shadowColor: Colors.black.withOpacity(0.6),
      shape: RoundedRectangleBorder(borderRadius: AppBorders.notificationsCard6,),
      margin: AppPadding.kAppFormPadding,

      child: Padding(
        padding: AppPadding.kTempPadding,
        child: Column(
          children:
          [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Image.asset(AppAssets.iconsPNG.ibrahimPNG),
                AppSizes.size13.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      AppSizes.size5.verticalSpace,
                      Row(
                        children:
                        [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children:
                              [
                                Text(AppStrings.ibrahim, style: AppStyles.textStyle14(
                                    fontWeight: AppFontWeights.semiBoldWeight,
                                    fontColor: AppColors.color.kQuinarySemiBlueText,
                                  ),
                                ),
                                AppSizes.size3.horizontalSpace,
                                Flexible(
                                  child: Text(AppStrings.commentOnYourProduct, style: AppStyles.textStyle12(fontWeight: AppFontWeights.semiBoldWeight,),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.asset(AppAssets.iconsPNG.threeHorzintalBlackDotsPNG),
                          AppSizes.size16.horizontalSpace,
                        ],
                      ),
                      AppSizes.size8.verticalSpace,
                      Row(
                        children:
                        [
                          Text(AppStrings.iPhone14promax, style: AppStyles.textStyle12(
                              fontWeight: AppFontWeights.semiBoldWeight,
                              fontColor: AppColors.color.kSemiGreyText,
                          ),),
                          const Spacer(),
                          Text(AppStrings.oneDayAgo, style: AppStyles.textStyle12(
                              fontWeight: AppFontWeights.semiBoldWeight,
                              fontColor: AppColors.color.kSemiGreyText,
                          ),),
                          AppSizes.size10.horizontalSpace
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
