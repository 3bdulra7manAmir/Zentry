import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/features/home/presentation/widgets/posts_feed_view/posts_card_view.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/widgets/app_listview_builder.dart';

class PostsList extends ConsumerWidget
{
  const PostsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return provider.postsAsync.when(
      data: (posts) => AppListviewBuilder(
        itemBuilder: (context, index) => PostsCard(post: posts[index]),
        separatorBuilder: (context, index) => AppSizes.size20.verticalSpace,
        itemCount: posts.length,
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
