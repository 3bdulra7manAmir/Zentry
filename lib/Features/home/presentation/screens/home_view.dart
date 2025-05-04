import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../widgets/home_appbar.dart';
import '../widgets/products_item.dart';

class HomeView extends StatelessWidget
{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomHomeAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          AppSizes.size14.verticalSpace,
          Divider(height: AppSizes.size1, color: AppColors.color.kFormButtonsBorders,),
          AppSizes.size10.verticalSpace,
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 12.w,),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const ProductsItem(),
              separatorBuilder: (context, index) => AppSizes.size16.horizontalSpace,
              itemCount: 7,
            ),
          ),
        ],
      ),
    );
  }
}