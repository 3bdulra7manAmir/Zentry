import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/app_providers.dart';
import '../../../../core/widgets/app_listview_builder.dart';
import '../widgets/create_panel_view/create_panel.dart';
import '../widgets/custom_appbar/home_appbar.dart';
import '../widgets/posts_feed_view/posts_card_view.dart';
import '../widgets/products_scroll_view/products_item_list.dart';
import '../widgets/story_scroll_view/story_view.dart';

class HomeScreen extends ConsumerWidget
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return Scaffold(
      appBar: const CustomHomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            AppSizes.size27.verticalSpace,
            Divider(height: AppSizes.size2, color: AppColors.color.kGrey001),
            SizedBox(height: 79.h, child: const ProductsItemList()),
            AppSizes.size23.verticalSpace,
            Divider(height: AppSizes.size2, color: AppColors.color.kGrey001),
            AppSizes.size12.verticalSpace,
            SizedBox(height: 148.h, child: const StroyList()),
            AppSizes.size12.verticalSpace,
            Divider(height: AppSizes.size4, color: AppColors.color.kGrey001),
            AppSizes.size16.verticalSpace,
            const CreatePanel(),
            Divider(height: AppSizes.size4, color: AppColors.color.kGrey001),
            AppSizes.size20.verticalSpace,
            provider.postsAsync.when(
              data: (posts) => AppListviewBuilder(
                itemCount: posts.length,
                itemBuilder: (context, index) => PostsCard(post: posts[index]),
                separatorBuilder: (context, index) => AppSizes.size20.verticalSpace,
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('${AppLocalizations.of(context).error}: $error')),
            ),
            AppSizes.size50.verticalSpace,
          ],
        ),
      ),
    );
  }
}