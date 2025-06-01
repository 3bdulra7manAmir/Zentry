import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/utils/app_reference.dart';
import '../../../../../../config/router/app_router.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_margins.dart';
import '../../../../../../core/constants/app_paddings.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../post_comments/post_comment_bar.dart';
import '../post_comments/post_comment_list_builder.dart';


class PostOpened extends ConsumerWidget
{
  final String carImage;
  const PostOpened({super.key, required this.carImage});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children:
            [
              AppSizes.size11.verticalSpace,
              Padding(
                padding: AppPadding.startOnly13,
                child: GestureDetector(
                  onTap: () => AppRouter.router.pop(),
                  child: AppImages.appBarBackArrow(context, ref),
                ),
              ),
              AppSizes.size15.verticalSpace,
              Container(
                width: double.infinity,
                height: 283.h,
                margin: AppMargins.horizontal10,
                decoration: BoxDecoration(
                  borderRadius: AppBordersRadiuses.circular7,
                  image: DecorationImage(image: AssetImage(carImage), fit: BoxFit.cover,),
                ),
              ),
              AppSizes.size20.verticalSpace,
              CommentCard(padding: AppPadding.horizontal10,),
              AppSizes.size18.verticalSpace,
              const PostCommentListBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
