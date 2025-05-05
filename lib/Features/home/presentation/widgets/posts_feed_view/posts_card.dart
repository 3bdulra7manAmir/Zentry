import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/constants/app_sizes.dart';
import '../../../../../core/constants/app_padding.dart';
import 'post_bio.dart';
import 'post_header.dart';

class PostsCard extends StatelessWidget
{
  const PostsCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: AppPadding.kAppFormPadding,
      width: 360.w,
      height: 518.h,
      child: Column(
        children:
        [
          const PostHeader(),
          AppSizes.size14.verticalSpace,
          const PostBio(),
          AppSizes.size12.verticalSpace,
          Image.asset("assets/icons/Home/Car_Merc.png", fit: BoxFit.cover, width: 360.w,)
        ],
      ),
    );
  }
}