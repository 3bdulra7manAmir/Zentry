import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_button.dart';

class CreateStory extends StatelessWidget
{
  const CreateStory({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: AppMargins.startOnly12,
      height: 148.h,
      width: 112.w,
      decoration:  BoxDecoration(
        borderRadius: AppBordersRadiuses.circular5,
        image: DecorationImage(image: AssetImage(AppAssets.iconsPNG.homeStoryRobot), fit: BoxFit.cover),),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Image.asset(AppAssets.iconsPNG.homeStoryCreate, width: 48.w, height: 48.h,),
          CustomButton(
            buttonBorderRadius: AppBordersRadiuses.circular5,
            buttonText: AppLocalizations.of(context).createStory, buttonOnPressed: () {},
            buttonWidth: 88.w,
            buttonHeight: 27.h,
            buttonBackgroundColor: AppColors.color.kGrey007,
            buttonPadding: AppPadding.horizontal15,
            buttonTextStyle: AppStyles.textStyle10(fontColor: AppColors.color.kWhite001, fontWeight: AppFontWeights.boldWeight),),
        ],
      ),
    );
  }
}