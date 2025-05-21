import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import 'create_panel_button.dart';

class CreatePanel extends StatelessWidget
{
  const CreatePanel({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: AppMargins.kCreatePanelPadding,
      width: 355.w,
      height: 90.h,
      child: Column(
        children:
        [
          Row(
            children:
            [
              Image.asset(AppAssets.iconsPNG.userProfilePNG),
              AppSizes.size12.horizontalSpace,
              Expanded(
                child: CreatePanelButton(
                  buttonText: AppLocalizations.of(context).sellProduct,
                  iconPath: AppAssets.iconsPNG.cubePlusPNG,
                ),
              ),
              AppSizes.size6.horizontalSpace,
              Expanded(
                child: CreatePanelButton(
                  buttonText: AppLocalizations.of(context).addService,
                  iconPath: AppAssets.iconsPNG.servicePNG,
                ),
              ),
            ],
          ),
          AppSizes.size16.verticalSpace,
          Row(
            children:
            [
              Image.asset(AppAssets.iconsPNG.reelsPNG),
              AppSizes.size4.horizontalSpace,
              Text(AppLocalizations.of(context).createReel, style: AppStyles.textStyle12(fontColor: AppColors.color.kSemiGreyAgain, fontWeight: AppFontWeights.boldWeight),),
              const Spacer(),
              Image.asset(AppAssets.iconsPNG.postPNG),
              AppSizes.size4.horizontalSpace,
              Text(AppLocalizations.of(context).createPost, style: AppStyles.textStyle12(fontColor: AppColors.color.kSemiGreyAgain, fontWeight: AppFontWeights.boldWeight),),
              const Spacer(),
              Image.asset(AppAssets.iconsPNG.createStoryPNG),
              AppSizes.size4.horizontalSpace,
              Text(AppLocalizations.of(context).createStory2, style: AppStyles.textStyle12(fontColor: AppColors.color.kSemiGreyAgain, fontWeight: AppFontWeights.boldWeight),),
            ],
          )
        ],
      ),
    );
  }
}