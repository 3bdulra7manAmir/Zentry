import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_margins.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/widgets/app_shimmer.dart';
import 'post_bio_shimmer.dart';
import 'post_comments_bar_shimmer.dart';
import 'post_header_shimmer.dart';
import 'post_reactions_shimmer.dart';

class PostCardShimmer extends StatelessWidget
{
  const PostCardShimmer({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: AppMargins.symmetric.medium,
      width: 360.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          const PostHeaderShimmer(),
          AppSizes.size14.verticalSpace,
          const PostBioShimmer(),
          AppSizes.size15.verticalSpace,
          ShimmerContainer(width: double.infinity, height: 12.h),
          AppSizes.size8.verticalSpace,
          ShimmerContainer(width: 280.w, height: 12.h),
          AppSizes.size12.verticalSpace,
          ShimmerContainer(width: 360.w, height: 180.h, borderRadius: AppBordersRadiuses.circular8), // === Image Section ===
          AppSizes.size8.verticalSpace,
          const PostReactionsShimmer(),
          AppSizes.size14.verticalSpace,
          const PostCommentsBarShimmer(),
        ],
      ),
    );
  }
}