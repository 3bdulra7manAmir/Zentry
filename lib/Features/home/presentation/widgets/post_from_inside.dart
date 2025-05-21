import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_margins.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import 'comment_card.dart';

void showCommentsBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.indicatorBorder),
    builder: (BuildContext context)
    {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children:
        [
          AppSizes.size11.verticalSpace,
          Padding(
            padding: AppPadding.commentsSection,
            child: Image.asset(AppAssets.iconsPNG.insidePostBackArrowPNG,),
          ),
          AppSizes.size25.verticalSpace,
          Container(
            width: double.infinity,
            height: 283.h,
            margin: AppMargins.kApp10Padding,
            decoration: BoxDecoration(
              borderRadius: AppBorders.buttonBorder7,
              image: DecorationImage(image: AssetImage(AppAssets.iconsPNG.insidePostMercCarPNG)),
            ),
          ),
          AppSizes.size30.verticalSpace,
          CommentCard(padding: AppPadding.postsInside),
          AppSizes.size18.verticalSpace,
        ],
      );
    },
  );
}

