import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../core/widgets/app_buttons/app_button.dart';
import '../../../../config/themes/font_system/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_margins.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../domain/entity/notification_entity.dart';
import 'notifications_actions.dart';

class DefaultNotificationCard extends StatelessWidget
{
  final NotificationEntity notification;
  
  const DefaultNotificationCard({super.key, required this.notification,});

  @override
  Widget build(BuildContext context)
  {
    return Card(
      color: AppColors.color.kWhite004,
      elevation: 1.0,
      shadowColor: Colors.black.withAlpha((0.6 * 255).round()),
      shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.circular6,),
      margin: AppMargins.symmetric.medium,

      child: Padding(
        padding: AppPadding.all.xxSmallAll,
        child: Column(
          children:
          [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [  
                Image.asset(notification.userImage),
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
                                Text(notification.username, style: AppStyles.textStyle14(
                                    fontWeight: AppFontWeights.semiBoldWeight,
                                    fontColor: AppColors.color.kBlue003,),
                                ),
                                AppSizes.size3.horizontalSpace,
                                Flexible(
                                  child: Text(notification.action, style: AppStyles.textStyle12(fontWeight: AppFontWeights.semiBoldWeight,),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          AppSizes.size16.horizontalSpace,
                          GestureDetector(
                            onTap: () => showActionsBottomSheet(context),
                            child: Image.asset(AppAssets.iconsPNG.notificationMenuDots)),
                          AppSizes.size16.horizontalSpace,
                        ],
                      ),
                      AppSizes.size8.verticalSpace,
                      Row(
                        children:
                        [
                          Text(notification.device, style: AppStyles.textStyle12(
                              fontWeight: AppFontWeights.semiBoldWeight,
                              fontColor: AppColors.color.kGreyText006,
                              textOverflow: TextOverflow.ellipsis,),),
                          const Spacer(),
                          if (notification.isFriendRequest != "Yes") Text(notification.time, style: AppStyles.textStyle12(
                              fontWeight: AppFontWeights.semiBoldWeight,
                              fontColor: AppColors.color.kGreyText006,
                          ),),
                          AppSizes.size12.horizontalSpace
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (notification.isFriendRequest == "Yes") ...[
              AppSizes.size13.verticalSpace,
              Row(
                children:
                [
                  AppSizes.size12.horizontalSpace,
                  Expanded(
                    flex: 2,
                    child: CustomButton(
                      buttonText: AppLocalizations.of(context).accept,
                      buttonTextStyle: AppStyles.textStyle13(
                        fontWeight: AppFontWeights.semiBoldWeight,
                        fontColor: AppColors.color.kWhite003
                      ),
                      buttonWidth: 114.w,
                      buttonHeight: 33.h,
                      buttonBorderRadius: AppBordersRadiuses.circular5,
                      buttonBackgroundColor: AppColors.color.kBlue003,
                      buttonOnPressed: () {},
                    ),
                  ),
                  AppSizes.size8.horizontalSpace,
                  Expanded(
                    flex: 2,
                    child: CustomButton(
                      buttonText: AppLocalizations.of(context).reject,
                      buttonTextStyle: AppStyles.textStyle13(
                        fontWeight: AppFontWeights.semiBoldWeight,
                        fontColor: AppColors.color.kBlack001
                      ),
                      buttonWidth: 114.w,
                      buttonHeight: 33.h,
                      buttonBorderRadius: AppBordersRadiuses.circular5,
                      buttonBackgroundColor: AppColors.color.kGreyText007,
                      buttonOnPressed: () {},
                    ),
                  ),
                  AppSizes.size35.horizontalSpace,
                  if (notification.isFriendRequest == "Yes")
                  Text(notification.time, style: AppStyles.textStyle12(
                      fontWeight: AppFontWeights.semiBoldWeight,
                      fontColor: AppColors.color.kGreyText006,
                    ),
                  ),
                  AppSizes.size12.horizontalSpace,
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
