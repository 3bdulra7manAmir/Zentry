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
import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_follow_button.dart';
import '../../core/widgets/app_listview_builder.dart';

void showFollowBusinessPageBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    //isScrollControlled: true,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.indicatorBorder),
    builder: (BuildContext context)
    {
      return Column(
        children:
        [
          const FollowBusinessCardHeader(headerText: AppStrings.followBusinessPage,),
          Expanded(
            child: AppListviewBuilder(
              itemBuilder: (context, index) => const FollowBusinessCard(), 
              separatorBuilder: (context, index) => AppSizes.size16.verticalSpace,
              itemCount: 22, 
            ),
          ),
          
          Container(
            width: double.infinity,
            height: 79.h,
            padding: AppPadding.kNextButtonPadding,
            decoration: BoxDecoration(
              color: AppColors.color.kFormButtonsFill,
            ),
            child: const CustomButton(buttonText: AppStrings.next,),
          ),
        ],
      );
    },
  );
}

class FollowBusinessCardHeader extends StatelessWidget
{
  const FollowBusinessCardHeader({super.key, required this.headerText, this.actionsIcon,});

  final String headerText;
  final Widget? actionsIcon;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children:
      [
        AppSizes.size15.verticalSpace,
        Row(
          children:
          [
            AppSizes.size10.horizontalSpace,
            Image.asset(AppAssets.iconsPNG.closePNG),
            const Spacer(),
            Text(headerText, style: AppStyles.textStyle12(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kSenaryTotalBlackText),),
            const Spacer(),
            actionsIcon ?? Image.asset(AppAssets.iconsPNG.vaultPNG),
            AppSizes.size16.horizontalSpace,
          ],
        ),
        Divider(color: AppColors.color.kSemiGrey3, thickness: AppSizes.size2,),
        AppSizes.size21.verticalSpace,
      ],
    );
  }
}


class FollowBusinessCard extends StatelessWidget
{
  const FollowBusinessCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: AppPadding.kFollowingBusinessPagePadding,
      child: Row(
        children:
        [
          Image.asset(AppAssets.iconsPNG.bmwPNG),
          AppSizes.size12.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Text(AppStrings.elSayadMotor, style: AppStyles.textStyle12(
                fontColor: AppColors.color.kSenaryTotalBlackText,
                fontWeight: AppFontWeights.semiBoldWeight),
              ),
              Text(AppStrings.carServices, style: AppStyles.textStyle12(
                fontColor: AppColors.color.kSemiGrey4,
                fontWeight: AppFontWeights.semiBoldWeight),
              ),
            ],
          ),
          const Spacer(),
          const CustomFollowButton()
        ],
      ),
    );
  }
}