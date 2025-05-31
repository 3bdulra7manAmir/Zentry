import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/features/home/presentation/widgets/posts_feed_view/post_card/post_card_view.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/widgets/app_lists/app_listview_builder.dart';
import '../shimmers/post_shimmer/post_shimmer.dart';

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
      loading: () => AppListviewBuilder(
        itemBuilder: (context, index) => const PostCardShimmer(),
        separatorBuilder: (context, index) => AppSizes.size20.verticalSpace,
        itemCount: 6,
      ),
      error: (error, stack) => Center(child: Text('${AppLocalizations.of(context).error}: $error')),
    );
  }
}
