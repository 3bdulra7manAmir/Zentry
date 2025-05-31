import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_margins.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/widgets/app_shimmer.dart';

class PostCardShimmer extends StatelessWidget
{
  const PostCardShimmer({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: AppMargins.horizontal16,
      width: 360.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          // === Post Header ===
          Row(
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
          ),
          AppSizes.size14.verticalSpace,
          // === Post Bio ===
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            [
              ShimmerContainer(width: 150.w, height: 14.h),
              ShimmerContainer(width: 132.w, height: 28.h, borderRadius: BorderRadius.circular(8.r)),
            ],
          ),
          AppSizes.size15.verticalSpace,
          ShimmerContainer(width: double.infinity, height: 12.h),
          AppSizes.size8.verticalSpace,
          ShimmerContainer(width: 280.w, height: 12.h),
          AppSizes.size12.verticalSpace,
          // === Image Section ===
          ShimmerContainer(width: 360.w, height: 180.h, borderRadius: BorderRadius.circular(8.r)),
          AppSizes.size8.verticalSpace,
          // === Reactions Row ===
          Row(
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
          ),
          AppSizes.size14.verticalSpace,
          // === Comment Bar ===
          Row(
            children:
            [
              ShimmerContainer(width: 42.w, height: 40.h, borderRadius: BorderRadius.circular(10.r)),
              AppSizes.size8.horizontalSpace,
              ShimmerContainer(width: 190.w, height: 40.h, borderRadius: BorderRadius.circular(10.r)),
              AppSizes.size8.horizontalSpace,
              ShimmerContainer(width: 38.w, height: 40.h, borderRadius: BorderRadius.circular(10.r)),
              AppSizes.size8.horizontalSpace,
              ShimmerContainer(width: 38.w, height: 40.h, borderRadius: BorderRadius.circular(10.r)),
            ],
          ),
        ],
      ),
    );
  }
}