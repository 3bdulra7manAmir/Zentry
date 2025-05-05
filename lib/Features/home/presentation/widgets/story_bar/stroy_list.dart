import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/app_listview_builder.dart';
import 'create_story.dart';
import 'users_story.dart';


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
          AppListviewBuilder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const UsersStory(),
            separatorBuilder: (context, index) => AppSizes.size9.horizontalSpace,
            itemCount: 8,
          ),
        ],
      ),
    );
  }
}


