import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/themes/color_system/colors_manager/app_colors.dart';
import 'package:test_app/config/themes/font_system/app_font_weights.dart';
import 'package:test_app/core/constants/app_sizes.dart';
import 'package:test_app/core/constants/app_styles.dart';

class WatchTutorial extends StatelessWidget
{
  const WatchTutorial({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Container(
          //width: 384.w,
          width: double.infinity,
          height: 210.h,
          //color: const Color.fromRGBO(32, 114, 255, 0.5),
          color: const Color(0xff244d93),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Image.asset("assets/icons/WatchTutorial/Exit.png"),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Image.asset("assets/icons/WatchTutorial/Play_Circle.png"),
                    AppSizes.size10.verticalSpace,
                    Text("Watch Tutorial", style: AppStyles.textStyle14(
                      fontColor: AppColors.color.kSecondaryWhite,
                      fontWeight: AppFontWeights.regularWeight)
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}