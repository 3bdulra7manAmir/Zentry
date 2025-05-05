import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/app_listview_builder.dart';
import 'others_story.dart';

class StoryListBuilder extends StatelessWidget
{
  const StoryListBuilder({super.key});

  @override
  Widget build(BuildContext context)
  {
    return AppListviewBuilder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => const UsersStory(),
      separatorBuilder: (context, index) => AppSizes.size9.horizontalSpace,
      itemCount: 9,
    );
  }
}