import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Core/constants/app_padding.dart';
import 'package:test_app/config/themes/font_system/app_font_weights.dart';
import 'package:test_app/core/constants/app_styles.dart';
import 'package:test_app/core/widgets/app_listview_builder.dart';
import '../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../core/constants/app_borders.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/widgets/app_follow_button.dart';

void showFollowBusinessPageBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.indicatorBorder),
    builder: (BuildContext context)
    {
      return Column(
        children:
        [
          const FollowBusinessCardHeader(),
          AppListviewBuilder(
            itemBuilder: (context, index) => const FollowBusinessCard(), 
            separatorBuilder: (context, index) => AppSizes.size16.verticalSpace,
            itemCount: 12, 
          ),
        ],
      );
    },
  );
}

class FollowBusinessCardHeader extends StatelessWidget
{
  const FollowBusinessCardHeader({super.key,});

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
            Image.asset("assets/icons/Follow_Business_Page/Close.png"),
            const Spacer(),
            Text("Follow Business page", style: AppStyles.textStyle12(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kSenaryTotalBlackText),),
            const Spacer(),
            Image.asset("assets/icons/Follow_Business_Page/Vault.png"),
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
          Image.asset("assets/icons/Follow_Business_Page/BMW_Logo.png"),
          AppSizes.size12.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Text("El Sayad Motor", style: AppStyles.textStyle12(
                fontColor: AppColors.color.kSenaryTotalBlackText,
                fontWeight: AppFontWeights.semiBoldWeight),
              ),
              Text("Car Services", style: AppStyles.textStyle12(
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