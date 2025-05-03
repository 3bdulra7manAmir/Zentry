import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/themes/font_system/app_font_weights.dart';
import 'package:test_app/core/constants/app_borders.dart';
import 'package:test_app/core/constants/app_styles.dart';
import 'package:test_app/core/widgets/app_button.dart';

import '../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_sizes.dart';

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
      shape: RoundedRectangleBorder(borderRadius: AppBorders.notificationsCard),
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
                Image.asset("assets/icons/Notifications/Adham.png"),
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
                                Text("Adham", style: AppStyles.textStyle14(
                                    fontWeight: AppFontWeights.semiBoldWeight,
                                    textColor: AppColors.color.kQuinarySemiBlueText,
                                  ),
                                ),
                                AppSizes.size3.horizontalSpace,
                                Flexible(
                                  child: Text("Sent you an invitation to join", overflow: TextOverflow.ellipsis,
                                    style: AppStyles.textStyle12(fontWeight: AppFontWeights.semiBoldWeight,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.asset("assets/icons/Notifications/3Horzintal_Black_Dots.png",),
                          AppSizes.size16.horizontalSpace,
                        ],
                      ),
                      Text("your contacts", style: AppStyles.textStyle12(
                          fontWeight: AppFontWeights.semiBoldWeight,
                          textColor: AppColors.color.kSemiGreyText,
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
                    buttonText: "Accept",
                    buttonTextStyle: AppStyles.textStyle13(fontWeight: AppFontWeights.semiBoldWeight, textColor: AppColors.color.kSecondaryWhite),
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
                    buttonText: "Reject",
                    buttonTextStyle: AppStyles.textStyle13(fontWeight: AppFontWeights.semiBoldWeight, textColor: AppColors.color.kSecondarySemiGreyTextDark),
                    buttonWidth: 114.w,
                    buttonHeight: 33.h,
                    buttonBorderRadius: AppBorders.buttonBorder5,
                    buttonBackgroundColor: AppColors.color.kSemiGrey,
                  ),
                ),
                AppSizes.size35.horizontalSpace,
                Expanded(
                  flex: 1,
                  child: Text("1 Day Ago", style: AppStyles.textStyle12(
                    fontWeight: AppFontWeights.semiBoldWeight,
                    textColor: AppColors.color.kSemiGreyText,
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
