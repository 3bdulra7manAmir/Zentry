import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/widgets/app_shimmer.dart';

class PostBioShimmer extends StatelessWidget
{
  const PostBioShimmer({super.key});

  @override
  Widget build(BuildContext context)
  {
    // === Post Bio ===
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
        [
          ShimmerContainer(width: 150.w, height: 14.h),
          ShimmerContainer(width: 132.w, height: 28.h, borderRadius: AppBordersRadiuses.circular.priceCard),
        ],
      );
  }
}