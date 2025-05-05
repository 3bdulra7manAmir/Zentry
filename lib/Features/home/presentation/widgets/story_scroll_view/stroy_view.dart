import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/app_sizes.dart';
import 'create_story.dart';
import 'story_list.dart';


class StroyList extends StatelessWidget
{
  const StroyList({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
        [
          const CreateStory(),
          AppSizes.size9.horizontalSpace,
          const StoryListBuilder(),
        ],
      ),
    );
  }
}


