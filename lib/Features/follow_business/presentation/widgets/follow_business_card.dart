import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/font_weights.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/app_buttons/app_follow_button.dart';
import '../../domain/entity/business_entity.dart';

class FollowBusinessCard extends StatelessWidget
{
  final Business business;
  const FollowBusinessCard({super.key, required this.business,});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: AppPadding.symmetric.xxLargeHorizontal,
      child: Row(
        children:
        [
          Image.asset(business.image),
          AppSizes.size12.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Text(business.title, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.semiBoldWeight,),),
              Text(business.subtitle, style: AppStyles.textStyle12(fontColor: AppColors.color.kGreyText011, fontWeight: AppFontWeights.semiBoldWeight,),),
            ],
          ),
          const Spacer(),
          const CustomFollowButton(),
        ],
      ),
    );
  }
}