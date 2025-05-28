import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../comments/comment_bar.dart';

void showCommentsBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.topOnly12),
    builder: (BuildContext context)
    {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children:
        [
          AppSizes.size11.verticalSpace,
          Padding(
            padding: AppPadding.startOnly13,
            child: Image.asset(AppAssets.iconsPNG.postDetailBackArrow,),
          ),
          AppSizes.size25.verticalSpace,
          Container(
            width: double.infinity,
            height: 283.h,
            margin: AppMargins.horizontal10,
            decoration: BoxDecoration(
              borderRadius: AppBordersRadiuses.circular7,
              image: DecorationImage(image: AssetImage(AppAssets.iconsPNG.postDetailMercJeep)),
            ),
          ),
          AppSizes.size30.verticalSpace,
          CommentCard(padding: AppPadding.horizontal38),
          AppSizes.size18.verticalSpace,
        ],
      );
    },
  );
}

