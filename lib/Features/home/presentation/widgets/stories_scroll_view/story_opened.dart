import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';

class StoryOpened extends StatelessWidget
{
  final String storyImage;
  const StoryOpened({super.key, required this.storyImage});

  @override
  Widget build(BuildContext context)
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
                padding: AppPadding.directional.mediumPlusStart,
                child: GestureDetector(
                  onTap: () => AppRouter.router.pop(),
                  child: Image.asset(AppAssets.iconsPNG.postDetailBackArrow),
                ),
              ),
              AppSizes.size25.verticalSpace,
              Container(
                width: double.infinity,
                height: 283.h,
                margin: AppMargins.symmetric.xSmall,
                decoration: BoxDecoration(
                  borderRadius: AppBordersRadiuses.circular7,
                  image: DecorationImage(
                    image: AssetImage(storyImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              AppSizes.size30.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
