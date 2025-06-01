import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/constants/app_margins.dart';
import 'package:test_app/features/home/presentation/widgets/stories_scroll_view/story_others.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/widgets/app_lists/app_listview_builder.dart';
import '../shimmers/story_shimmer.dart';

class StroyListBuilder extends ConsumerWidget
{
  const StroyListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return provider.storiesAsyncValue.when(
      data: (stories) => AppListviewBuilder(
        padding: AppMargins.horizontal9,
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => AppRouter.router.pushNamed(AppRoutes.kStoryOpened, extra: stories[index].backgroundImage,),
          child: UsersStory(story: stories[index])
        ),
        separatorBuilder: (context, index) => AppSizes.size9.horizontalSpace,
      ),
      loading: () => AppListviewBuilder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => const UsersStoryShimmer(),
        separatorBuilder: (context, index) => AppSizes.size0.horizontalSpace,
      ),
      error: (error, stackTrace) => Center(child: Text('${AppLocalizations.of(context).error}: $error'),
      ),
    );
  }
}