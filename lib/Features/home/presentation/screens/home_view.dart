import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/widgets/app_listview_builder.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../widgets/create_panel_view/create_panel.dart';
import '../widgets/home_appbar.dart';
import '../widgets/posts_feed_view/posts_card_view.dart';
import '../widgets/products_scroll_view/products_item_list.dart';
import '../widgets/story_scroll_view/story_view.dart';

class HomeView extends StatelessWidget
{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomHomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
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
            AppSizes.size12.verticalSpace,
            Divider(height: AppSizes.size4, color: AppColors.color.kFormButtonsBorders,),
            AppSizes.size16.verticalSpace,
            const CreatePanel(),
            Divider(height: AppSizes.size4, color: AppColors.color.kFormButtonsBorders,),
            AppSizes.size20.verticalSpace,
            AppListviewBuilder(
              itemBuilder: (context, index) => const PostsCard(),
              itemCount: 4,
              separatorBuilder: (context, index) => AppSizes.size20.verticalSpace,
            ),
            AppSizes.size50.verticalSpace,
          ],
        ),
      ),
    );
  }
}