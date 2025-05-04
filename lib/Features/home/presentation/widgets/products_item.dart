import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_sizes.dart';

class ProductsItem extends StatelessWidget
{
  const ProductsItem({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        Container(
          width: 55.w,
          height: 55.h,
          decoration: BoxDecoration(
            color: AppColors.color.kProductItemBackground,
            image: const DecorationImage(image: AssetImage("assets/icons/Home/Car_Blue.png")),
            borderRadius: AppBorders.kProductItemRadius,
          ),
        ),

        // SizedBox(
        //   height: 55.h,
        //   width: 55.w,
        //   child: CircleAvatar(
        //     backgroundColor: AppColors.color.kProductItemBackground,
        //     backgroundImage: const AssetImage("assets/icons/Home/Car_Blue.png"),
        //   ),
        // ),

        AppSizes.size8.verticalSpace,
        //Text("Vehciles", style: ,),
      ],
    );
  }
}