import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/app_shimmer.dart';

class UsersStoryShimmer extends StatelessWidget
{
  const UsersStoryShimmer({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 148.h, width: 112.w,
      padding: AppPadding.startOnly12,
      decoration: BoxDecoration(borderRadius: AppBordersRadiuses.circular5, color: AppColors.color.kGrey001),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          AppSizes.size9.verticalSpace,
          ShimmerContainer(
            baseColor: AppColors.color.kGrey002,
            highlightColor: AppColors.color.kGrey002,
            width: 40.w, height: 40.h,
            borderRadius: AppBordersRadiuses.circular50,
          ),
          const Spacer(),
          ShimmerContainer(
            baseColor: AppColors.color.kGrey003,
            highlightColor: AppColors.color.kGrey003,
            width: 40.w, height: 10.h,
            borderRadius: AppBordersRadiuses.circular5,
          ),
          AppSizes.size10.verticalSpace,
        ],
      ),
    );
  }
}
