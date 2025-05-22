import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/themes/color_system/app_colors.dart';
import '../../config/themes/font_system/font_weights.dart';
import '../../core/constants/app_images.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/constants/app_strings.dart';
import '../../core/constants/app_styles.dart';

class WatchTutorial extends StatelessWidget
{
  const WatchTutorial({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: 210.h,
          color: AppColors.color.kBlue006  ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Image.asset(AppAssets.iconsPNG.tutorialExit),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Image.asset(AppAssets.iconsPNG.tutorialPlayCircle),
                    AppSizes.size10.verticalSpace,
                    Text(AppStrings.watchTutorial, style: AppStyles.textStyle14(
                      fontColor: AppColors.color.kWhite001,
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