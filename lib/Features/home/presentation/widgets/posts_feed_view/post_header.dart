import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/themes/color_system/colors_manager/app_colors.dart';
import 'package:test_app/config/themes/font_system/app_font_weights.dart';
import 'package:test_app/core/constants/app_styles.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../cards/post_card.dart';
import '../../../../cards/actions_card.dart';

class PostHeader extends StatelessWidget
{
  const PostHeader({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Image.asset("assets/icons/Home/Post_User_Icon.png"),
        AppSizes.size8.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Text("REUEAL & Staging", style: AppStyles.textStyle12(
              fontColor: AppColors.color.kQuaternarySemiBlackText,
              fontWeight: AppFontWeights.semiBoldWeight),
            ),
            AppSizes.size4.verticalSpace,
            Text("Just Now", style: AppStyles.textStyle10(
              textColor: AppColors.color.kTertiarySemiGrey,
              fontWeight: AppFontWeights.mediumWeight),
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          //onTap: () => showPostOptionsBottomSheet(context),
          onTap: () => showActionsBottomSheet(context),
          child: Image.asset("assets/icons/Home/3Grey_Dots.png")
        ),
      ],
    );
  }
}