import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../config/themes/font_system/app_font_weights.dart';
import '../../core/constants/app_borders.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/constants/app_styles.dart';
import '../../core/widgets/app_button.dart';

void showJoinGroupsBottomSheet(BuildContext context)
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
          
          
          Container(
            width: double.infinity,
            height: 79.h,
            padding: EdgeInsetsDirectional.only(start: 16.w, end: 16.w, top: 11.h, bottom: 20.h),
            decoration: BoxDecoration(
              color: AppColors.color.kFormButtonsFill,
            ),
            child: const CustomButton(buttonText: "Next"),
          )
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
            Text("Join Groups", style: AppStyles.textStyle12(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kSenaryTotalBlackText),),
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