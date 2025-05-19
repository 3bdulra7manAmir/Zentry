import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_padding.dart';
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
      color: AppColors.color.kSecondaryWhite,
      elevation: 1.0,
      shadowColor: Colors.black.withOpacity(0.3),
      shape: RoundedRectangleBorder(borderRadius: AppBorders.notificationsCard6),
      margin: AppPadding.kAppFormPadding,
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
                Image.asset(AppAssets.iconsPNG.adhamPNG),
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
                                    fontColor: AppColors.color.kQuinarySemiBlueText,
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
                          Image.asset(AppAssets.iconsPNG.horzintal3BlackDotsPNG),
                          AppSizes.size16.horizontalSpace,
                        ],
                      ),
                      Text(AppLocalizations.of(context).yourContacts, style: AppStyles.textStyle12(
                          fontWeight: AppFontWeights.semiBoldWeight,
                          fontColor: AppColors.color.kSemiGreyText,
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
                    buttonTextStyle: AppStyles.textStyle13(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kSecondaryWhite),
                    buttonWidth: 114.w,
                    buttonHeight: 33.h,
                    buttonBorderRadius: AppBorders.buttonBorder5,
                    buttonBackgroundColor: AppColors.color.kQuinarySemiBlueText,
                  ),
                ),
                AppSizes.size8.horizontalSpace,
                Expanded(
                  flex: 2,
                  child: CustomButton(
                    buttonText: AppLocalizations.of(context).reject,
                    buttonTextStyle: AppStyles.textStyle13(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kSecondarySemiGreyTextDark),
                    buttonWidth: 114.w,
                    buttonHeight: 33.h,
                    buttonBorderRadius: AppBorders.buttonBorder5,
                    buttonBackgroundColor: AppColors.color.kSemiGrey,
                  ),
                ),
                AppSizes.size35.horizontalSpace,
                Expanded(
                  flex: 1,
                  child: Text(AppLocalizations.of(context).dayAgo1, style: AppStyles.textStyle12(
                    fontWeight: AppFontWeights.semiBoldWeight,
                    fontColor: AppColors.color.kSemiGreyText,
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
