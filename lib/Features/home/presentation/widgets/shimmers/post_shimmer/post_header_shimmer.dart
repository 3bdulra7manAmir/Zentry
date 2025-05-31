import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/widgets/app_shimmer.dart';

class PostHeaderShimmer extends StatelessWidget
{
  const PostHeaderShimmer({super.key});

  @override
  Widget build(BuildContext context)
  {
    // === Post Header ===
    return Row(
        children:
        [
          ShimmerContainer(
            width: 40.w, height: 40.w,
            borderRadius: AppBordersRadiuses.circular20,
          ),
          AppSizes.size8.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              ShimmerContainer(width: 120.w, height: 12.h),
              AppSizes.size4.verticalSpace,
              ShimmerContainer(width: 80.w, height: 10.h),
            ],
          ),
          const Spacer(),
          ShimmerContainer(width: 20.w, height: 20.h), // three-dots icon
        ],
      );
  }
}