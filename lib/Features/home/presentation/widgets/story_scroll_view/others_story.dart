import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class UsersStory extends StatelessWidget
{
  const UsersStory({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 148.h,
      width: 112.w,
      decoration:  BoxDecoration(
        borderRadius: AppBorders.buttonBorder5,
        image: const DecorationImage(image: AssetImage("assets/icons/Home/Camera.png"), fit: BoxFit.cover),),
      child: Padding(
        padding: AppPadding.kHomeListViewPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            AppSizes.size9.verticalSpace,
            Container(
              decoration: BoxDecoration(
                borderRadius: AppBorders.kProductItemRadius,
                border: Border.all(color: AppColors.color.kRobotBoyRadiusColor, width: 2.w),
              ),
              child: Image.asset("assets/icons/Home/Robot_Boy_SUIIZ.png")),
            const Spacer(),
            Text("El Hawi Motors", style: AppStyles.textStyle10(fontColor: AppColors.color.kSecondaryWhite, fontWeight: AppFontWeights.extraBoldWeight),),
            AppSizes.size10.verticalSpace,
          ],
        ),
      ),
    );
  }
}