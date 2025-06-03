import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/constants/app_sizes.dart';
import '../../../../../../core/helpers/app_providers.dart';
import '../../../../../../core/widgets/app_lists/app_listview_builder.dart';
import '../../../../data/data_sources/comments_list.dart';
import 'post_comment_card.dart';

class PostCommentListBuilder extends ConsumerWidget
{
  const PostCommentListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context); 
    final allComments = [...provider.tempComments, ...commentsList];
    return AppListviewBuilder(
      itemBuilder: (context, index) => PostCommentCard(commentText: allComments[index]),
      separatorBuilder: (context, index) => AppSizes.size5.verticalSpace,
      itemCount: allComments.length,
    );
  }
}
