import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/router/app_router.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import 'post_comments/post_comment_bar.dart';

class OpenedStory extends StatelessWidget
{
  const OpenedStory({super.key});

  @override
  Widget build(BuildContext context)
  {
    final String carImage = ModalRoute.of(context)!.settings.arguments as String;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children:
      [
        AppSizes.size11.verticalSpace,
        Padding(
          padding: AppPadding.startOnly13,
          child: GestureDetector(
            onTap: () => AppRouter.router.pop(),
            child: Image.asset(AppAssets.iconsPNG.postDetailBackArrow),
          ),
        ),
        AppSizes.size25.verticalSpace,
        Container(
          width: double.infinity,
          height: 283.h,
          margin: AppMargins.horizontal10,
          decoration: BoxDecoration(
            borderRadius: AppBordersRadiuses.circular7,
            image: DecorationImage(
              image: AssetImage(carImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        AppSizes.size30.verticalSpace,
        CommentCard(padding: AppPadding.horizontal38,),
        AppSizes.size18.verticalSpace,
      ],
    );
  }
}
