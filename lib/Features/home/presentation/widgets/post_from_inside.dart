import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_padding.dart';
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
            padding: EdgeInsetsDirectional.only(start: 13.w),
            child: Image.asset("assets/icons/Inside_Post/Left_Black_Arrow.png",),
          ),
          AppSizes.size25.verticalSpace,
          Container(
            width: double.infinity,
            height: 283.h,
            margin: AppPadding.kApp10Padding,
            decoration: BoxDecoration(
              borderRadius: AppBorders.buttonBorder7,
              image: const DecorationImage(image: AssetImage("assets/icons/Inside_Post/Merc_Jeep.png")),
            ),
          ),
          AppSizes.size30.verticalSpace,
          CommentCard(padding: EdgeInsets.symmetric(horizontal: 38.w),),
          AppSizes.size18.verticalSpace,
        ],
      );
    },
  );
}

