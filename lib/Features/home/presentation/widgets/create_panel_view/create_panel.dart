import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/themes/color_system/colors_manager/app_colors.dart';
import 'package:test_app/core/constants/app_padding.dart';
import 'package:test_app/core/constants/app_sizes.dart';

import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_styles.dart';
import 'create_panel_button.dart';

class CreatePanel extends StatelessWidget
{
  const CreatePanel({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: AppPadding.kCreatePanelPadding,
      width: 355.w,
      height: 90.h,
      child: Column(
        children:
        [
          Row(
            children:
            [
              Image.asset("assets/icons/Home/User_Profile.png"),
              AppSizes.size12.horizontalSpace,
              const Expanded(
                child: CreatePanelButton(
                  buttonText: "Sell product",
                  iconPath: "assets/icons/Home/Cube_Plus.png",
                ),
              ),
              AppSizes.size6.horizontalSpace,
              const Expanded(
                child: CreatePanelButton(
                  buttonText: "Add service",
                  iconPath: "assets/icons/Home/Service.png",
                ),
              ),
            ],
          ),
          AppSizes.size16.verticalSpace,
          Row(
            children:
            [
              Image.asset("assets/icons/Home/Reels.png"),
              AppSizes.size4.horizontalSpace,
              Text("Create reel", style: AppStyles.textStyle12(textColor: AppColors.color.kSemiGreyAgain, fontWeight: AppFontWeights.boldWeight),),
              const Spacer(),
              Image.asset("assets/icons/Home/Post.png"),
              AppSizes.size4.horizontalSpace,
              Text("Create post", style: AppStyles.textStyle12(textColor: AppColors.color.kSemiGreyAgain, fontWeight: AppFontWeights.boldWeight),),
              const Spacer(),
              Image.asset("assets/icons/Home/Create_Stroy.png"),
              AppSizes.size4.horizontalSpace,
              Text("Create story", style: AppStyles.textStyle12(textColor: AppColors.color.kSemiGreyAgain, fontWeight: AppFontWeights.boldWeight),),
            ],
          )
        ],
      ),
    );
  }
}