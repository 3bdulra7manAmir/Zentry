import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Core/constants/app_images.dart';
import 'package:test_app/Core/constants/app_styles.dart';
import 'package:test_app/config/themes/app_colors.dart';


class FormHeader extends StatelessWidget
{
  const FormHeader({super.key, this.isText, this.downleftText, this.upperRightText,});

  final bool? isText;
  final String? downleftText;
  final String? upperRightText;

  @override
  Widget build(BuildContext context)
  {
    return
    // Stack(
    //   //clipBehavior: Clip.none,
    //   children:
    //   [
    //     // Positioned(
    //     //   top: 35.h, right: 15.w,
    //     //   child: Image.asset(AppAssets.iconsPNG.cloudPNG)),

    //     // Positioned(
    //     //   top: 40.h, right: 50.w,
    //     //   child: Image.asset(AppAssets.iconsPNG.appLogoPNG)
    //     //   ),

    //     //Image.asset(AppAssets.iconsPNG.fullHeaderPNG),
    //   ],
    // );

    //   Padding(
    //     padding: EdgeInsetsDirectional.only(
    //     start: 28.w,
    //     end: 17.w,
    //     top: 20.h,
    //     bottom: 0,
    //   ),
    //   child: Image.asset(AppAssets.iconsPNG.fullHeaderPNG),
    // );
    
      Stack(
        clipBehavior: Clip.none,
        children:
        [
          Container(
            clipBehavior: Clip.none,
            padding: EdgeInsetsDirectional.only(
              start: 28.w,
              end: 17.w,
              top: 20.h,
              bottom: 0,
            ),
            width: double.infinity,
            color: AppColors.kPrimaryBlue,
            child: Image.asset(AppAssets.iconsPNG.fullHeaderPNG),
          ),

          (isText ?? false) ? Positioned(
            top: 100.h, left: 17.w, right: 0,
            child: Text(downleftText ?? "Yet", style: AppStyles.textStyle18(),)) : const SizedBox.shrink(),

          (isText ?? false) ? Positioned(top: 44.h, right: 17.w,
            child: Row(
              children:
              [
                Text(upperRightText ?? "Yet", style: AppStyles.textStyle13(textColor: AppColors.kSkip, textDecoration: TextDecoration.underline, textDecorationColor: AppColors.kSkip),),
                Image.asset(AppAssets.iconsPNG.leftWhiteArrowPNG)
              ],
            ),
          ) : const SizedBox.shrink(),
        ],
      );
  }
}