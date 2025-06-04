import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/widgets/app_shimmer.dart';

class CreatePanelShimmer extends StatelessWidget
{
  const CreatePanelShimmer({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: AppMargins.symmetric.large,
      width: 355.w,
      height: 90.h,
      child: Column(
        children:
        [
          Row(
            children:
            [
              _shimmerCircle(24.w),
              // AppSizes.size12.horizontalSpace,
              // _shimmerButton(),
              // AppSizes.size6.horizontalSpace,
              // _shimmerButton(),
            ],
          ),
          // AppSizes.size16.verticalSpace,
          // Row(
          //   children:
          //   [
          //     _shimmerCircle(20.w),
          //     AppSizes.size4.horizontalSpace,
          //     _shimmerText(60.w),
          //     const Spacer(),
          //     _shimmerCircle(20.w),
          //     AppSizes.size4.horizontalSpace,
          //     _shimmerText(60.w),
          //     const Spacer(),
          //     _shimmerCircle(20.w),
          //     AppSizes.size4.horizontalSpace,
          //     _shimmerText(60.w),
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget _shimmerCircle(double size)
  {
    return ShimmerContainer(
      width: size, height: size,
      borderRadius: BorderRadius.circular(size / 2),
    );
  }

//   Widget _shimmerText(double width)
//   {
//     return ShimmerContainer(
//       width: width, height: 12.h,
//       borderRadius: AppBordersRadiuses.circular.smallButton,
//     );
//   }

//   Widget _shimmerButton()
//   {
//     return ShimmerContainer(
//       width: 153.w, height: 31.h,
//       borderRadius: AppBordersRadiuses.circular.smallButton,
//     );
//   }
}
