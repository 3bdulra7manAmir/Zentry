import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/app_listview_builder.dart';

class PostsListview extends StatelessWidget
{
  const PostsListview({super.key});

  @override
  Widget build(BuildContext context)
  {
    return AppListviewBuilder(
      itemBuilder: (context, index) => const SizedBox.shrink(),
      separatorBuilder: (context, index) =>  AppSizes.size12.verticalSpace,
      itemCount: 3,
    );
  }
}