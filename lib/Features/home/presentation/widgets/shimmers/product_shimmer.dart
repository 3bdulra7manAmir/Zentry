import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/app_shimmer.dart';

class ProductsItemShimmer extends StatelessWidget {
  const ProductsItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShimmerContainer(
          width: 55.w,
          height: 55.h,
          borderRadius: AppBordersRadiuses.circular50,
        ),
        AppSizes.size8.verticalSpace,
        ShimmerContainer(
          width: 50.w,
          height: 10.h,
          borderRadius: AppBordersRadiuses.circular4,
        ),
      ],
    );
  }
}
