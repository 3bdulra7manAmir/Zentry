import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../follow_business/presentation/screens/follow_business_page.dart';

void showCompleteProfileBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.topOnly12),
    builder: (BuildContext context)
    {
      return Column(
        children:
        [
          FollowBusinessCardHeader(headerText: AppLocalizations.of(context).completeProfile,),
          AppSizes.size16.verticalSpace,
          const CompleteProfileCard(),
          const Spacer(),
          Container(
            width: double.infinity,
            height: 79.h,
            padding: AppPadding.nextButton,
            decoration: BoxDecoration(
              color: AppColors.color.kGrey002,
            ),
            child: CustomButton(buttonText: AppLocalizations.of(context).next,),
          ),
        ],
      );
    },
  );
}


class CompleteProfileCard extends StatelessWidget
{

  const CompleteProfileCard({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      clipBehavior: Clip.none,
      children:
      [
        Container(
          width: 326.w,
          height: 168.h,
          decoration: BoxDecoration(
            color: AppColors.color.kGrey002,
            borderRadius: AppBorders.circular12,
            border: Border.all(color: AppColors.color.kGrey001, width: AppBorderWidths.medium,),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Image.asset(AppAssets.iconsPNG.profileCamera),
                AppSizes.size10.verticalSpace,
                Text(AppLocalizations.of(context).addCoverPhoto, style: AppStyles.textStyle10(
                  fontColor: AppColors.color.kGreyText002,
                  fontWeight: AppFontWeights.semiBoldWeight
                ),),
              ],
            ),
          ),
        ), 
        Positioned(
          left: 0,
          right: 150.w,
          bottom: -15.h,
          child: Image.asset(AppAssets.iconsPNG.profileImagePicker, width: 38.w, height: 38.h, fit: BoxFit.contain,),
        ),
      ],
    );
  }
}