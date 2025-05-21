import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/app_listview_builder.dart';
import '../../controllers/stories_provider/stories_items_provider.dart';
import 'others_story.dart';

class StroyListBuilder extends ConsumerWidget
{
  const StroyListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final storiesAsyncValue = ref.watch(storiesItemsProvider);

    return storiesAsyncValue.when(
      data: (stories) => AppListviewBuilder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) => UsersStory(story: stories[index]),
        separatorBuilder: (context, index) => AppSizes.size9.horizontalSpace,
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(
        child: Text('${AppLocalizations.of(context).error}: $error'),
      ),
    );
  }
}