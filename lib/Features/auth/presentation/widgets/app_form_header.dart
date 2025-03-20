import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Core/constants/app_images.dart';

class FormHeader extends StatelessWidget
{
  const FormHeader({super.key});

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

      Padding(
        padding: EdgeInsetsDirectional.only(
        start: 28.w,
        end: 17.w,
        top: 20.h,
        bottom: 0,
      ),
      child: Image.asset(AppAssets.iconsPNG.fullHeaderPNG),
    );
  }
}