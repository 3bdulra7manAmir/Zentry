import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_margins.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/app_button.dart';

class FriendRequestCard extends StatelessWidget
{
  const FriendRequestCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Card(
      color: AppColors.color.kWhite001,
      elevation: 1.0,
      shadowColor: Colors.black.withOpacity(0.3),
      shape: RoundedRectangleBorder(borderRadius: AppBorders.notificationsCard6),
      margin: AppMargins.kAppFormPadding,
      child: Padding(
        padding: AppPadding.kTempPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Image.asset(AppAssets.iconsPNG.notificationUserAdham),
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
                              children:
                              [
                                Text(AppLocalizations.of(context).adham, style: AppStyles.textStyle14(
                                    fontWeight: AppFontWeights.semiBoldWeight,
                                    fontColor: AppColors.color.kBlue003,
                                  ),
                                ),
                                AppSizes.size3.horizontalSpace,
                                Flexible(
                                  child: Text(AppLocalizations.of(context).sentYouAnInvitationToJoin, overflow: TextOverflow.ellipsis,
                                    style: AppStyles.textStyle12(fontWeight: AppFontWeights.semiBoldWeight,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.asset(AppAssets.iconsPNG.notificationMenuDots),
                          AppSizes.size16.horizontalSpace,
                        ],
                      ),
                      Text(AppLocalizations.of(context).yourContacts, style: AppStyles.textStyle12(
                          fontWeight: AppFontWeights.semiBoldWeight,
                          fontColor: AppColors.color.kGreyText006,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            AppSizes.size13.verticalSpace,
            Row(
              children:
              [
                AppSizes.size12.horizontalSpace,
                Expanded(
                  flex: 2,
                  child: CustomButton(
                    buttonText: AppLocalizations.of(context).accept,
                    buttonTextStyle: AppStyles.textStyle13(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kWhite001),
                    buttonWidth: 114.w,
                    buttonHeight: 33.h,
                    buttonBorderRadius: AppBorders.buttonBorder5,
                    buttonBackgroundColor: AppColors.color.kBlue003,
                  ),
                ),
                AppSizes.size8.horizontalSpace,
                Expanded(
                  flex: 2,
                  child: CustomButton(
                    buttonText: AppLocalizations.of(context).reject,
                    buttonTextStyle: AppStyles.textStyle13(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kDarkText001),
                    buttonWidth: 114.w,
                    buttonHeight: 33.h,
                    buttonBorderRadius: AppBorders.buttonBorder5,
                    buttonBackgroundColor: AppColors.color.kGreyText007,
                  ),
                ),
                AppSizes.size35.horizontalSpace,
                Expanded(
                  flex: 1,
                  child: Text(AppLocalizations.of(context).dayAgo1, style: AppStyles.textStyle12(
                    fontWeight: AppFontWeights.semiBoldWeight,
                    fontColor: AppColors.color.kGreyText006,
                  ),),
                ),
                AppSizes.size10.horizontalSpace
              ],
            ),
          ],
        ),
      ),
    );
  }
}
