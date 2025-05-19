import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/constants/app_sizes.dart';
import 'package:test_app/core/constants/app_styles.dart';

class PostReactions extends StatelessWidget
{
  const PostReactions({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children:
      [
        Row(
          children:
          [
            SizedBox(
              width: 20.w,
              height: 15.h,
              child: Stack(
                clipBehavior: Clip.none,
                children:
                [
                  Positioned(
                    left: 0,
                    child: Image.asset("assets/icons/Comments_Card/Heart.png",),
                  ),
                  Positioned(
                    left: 6.w,
                    child: Image.asset("assets/icons/Comments_Card/Smiling_Face.png",),
                  ),
                  Positioned(
                    left: 11.w,
                    child: Image.asset("assets/icons/Comments_Card/Crying_Face_.png",),
                  ),
                ],
              ),
            ),

            AppSizes.size7.horizontalSpace,
            Text("500", style: AppStyles.textStyle10(),),
            AppSizes.size4.horizontalSpace,
            Text("Likes", style: AppStyles.textStyle10(),),
            const Spacer(),
            Text("20", style: AppStyles.textStyle10(),),
            AppSizes.size4.horizontalSpace,
            Text("Comments", style: AppStyles.textStyle10(),),
            AppSizes.size9.horizontalSpace,
            Text("1", style: AppStyles.textStyle10(),),
            AppSizes.size4.horizontalSpace,
            Text("Share", style: AppStyles.textStyle10(),),   
          ],
        )
      ],
    );
  }
}