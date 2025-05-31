import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/widgets/app_shimmer.dart';

class PostCommentsBarShimmer extends StatelessWidget
{
  const PostCommentsBarShimmer({super.key});

  @override
  Widget build(BuildContext context)
  {
    // === Comment Bar ===
    return Row(
        children:
        [
          ShimmerContainer(width: 42.w, height: 40.h, borderRadius: AppBordersRadiuses.circular10),
          AppSizes.size8.horizontalSpace,
          ShimmerContainer(width: 190.w, height: 40.h, borderRadius: AppBordersRadiuses.circular10),
          AppSizes.size8.horizontalSpace,
          ShimmerContainer(width: 38.w, height: 40.h, borderRadius: AppBordersRadiuses.circular10),
          AppSizes.size8.horizontalSpace,
          ShimmerContainer(width: 38.w, height: 40.h, borderRadius: AppBordersRadiuses.circular10),
        ],
      );
  }
}