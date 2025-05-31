import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/widgets/app_shimmer.dart';

class PostReactionsShimmer extends StatelessWidget
{
  const PostReactionsShimmer({super.key});

  @override
  Widget build(BuildContext context)
  {
    // === Reactions Row ===
    return Row(
      children:
      [
        ShimmerContainer(width: 20.w, height: 15.h),
        AppSizes.size7.horizontalSpace,
        ShimmerContainer(width: 30.w, height: 10.h),
        AppSizes.size4.horizontalSpace,
        ShimmerContainer(width: 40.w, height: 10.h),
        const Spacer(),
        ShimmerContainer(width: 30.w, height: 10.h),
        AppSizes.size4.horizontalSpace,
        ShimmerContainer(width: 50.w, height: 10.h),
        AppSizes.size15.horizontalSpace,
        ShimmerContainer(width: 30.w, height: 10.h),
        AppSizes.size4.horizontalSpace,
        ShimmerContainer(width: 50.w, height: 10.h),
      ],
    );
  }
}