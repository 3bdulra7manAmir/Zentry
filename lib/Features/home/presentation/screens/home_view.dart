import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../widgets/home_appbar.dart';
import '../widgets/products_scroll_bar/products_item_list.dart';
import '../widgets/story_bar/stroy_list.dart';

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
          AppSizes.size27.verticalSpace,
          Divider(height: AppSizes.size2, color: AppColors.color.kFormButtonsBorders,),
          SizedBox(height: 79.h, child: const ProductsItemList(),),
          AppSizes.size23.verticalSpace,
          Divider(height: AppSizes.size2, color: AppColors.color.kFormButtonsBorders,),
          AppSizes.size12.verticalSpace,
          SizedBox(height: 148.h, child: const StroyList()),
        ],
      ),
    );
  }
}