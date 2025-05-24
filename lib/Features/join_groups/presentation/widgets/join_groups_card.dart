import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_shadow_boxes.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../domain/entities/join_groups_entity.dart';

class JoinGroupsCard extends StatelessWidget
{
  final JoinGroupsEntity group;
  const JoinGroupsCard({super.key, required this.group});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      clipBehavior: Clip.none,
      children:
      [
        Container(
          width: 149.w,
          height: 105.h,
          decoration: BoxDecoration(
            boxShadow: [AppShadowBoxes.joinGroupsCard,],
            color: AppColors.color.kWhite001,
            borderRadius: AppBordersRadiuses.circular10,
            border: AppFullBorders.joinGroupsCard,
          ),
          child: Column(
            children:
            [
              AppSizes.size20.verticalSpace,
              Text(group.title, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack001,),),
              AppSizes.size5.verticalSpace,
              Text(group.membersCount, style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kBlue003,),),
              AppSizes.size5.verticalSpace,
              Image.asset(AppAssets.iconsPNG.groupMembers)
            ],
          ),
        ),
        Positioned(
          top: -20.h,
          left: 0,
          right: 22.w,
          child: Image.asset(
            group.image,
            width: 38.w,
            height: 38.h,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}