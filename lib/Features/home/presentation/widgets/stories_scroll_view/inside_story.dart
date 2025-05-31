import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/constants/app_images.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';

void showInsideStoryBottomSheet(BuildContext context, String backgroundImage)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.topOnly12),
    builder: (BuildContext context)
    {
      return SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Image.asset(AppAssets.iconsPNG.businessClose),
            AppSizes.size5.verticalSpace,
            Container(
              height: 430.h,
              //width: 112.w,
              margin: AppPadding.horizontal10,
              decoration: BoxDecoration(borderRadius: AppBordersRadiuses.circular5,
                image: DecorationImage(image: AssetImage(backgroundImage), fit: BoxFit.cover,),
              ),
            ),
            AppSizes.size10.verticalSpace,
          ],
        ),
      );
    },
  );
}