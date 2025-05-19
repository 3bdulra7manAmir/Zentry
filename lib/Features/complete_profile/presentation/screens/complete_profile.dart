import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_padding.dart';
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
    shape: RoundedRectangleBorder(borderRadius: AppBorders.indicatorBorder),
    builder: (BuildContext context)
    {
      return Column(
        children:
        [
          const FollowBusinessCardHeader(headerText: "Complete Profile",),
          AppSizes.size16.verticalSpace,
          const CompleteProfileCard(),
          const Spacer(),
          Container(
            width: double.infinity,
            height: 79.h,
            padding: AppPadding.kNextButtonPadding,
            decoration: BoxDecoration(
              color: AppColors.color.kFormButtonsFill,
            ),
            child: const CustomButton(buttonText: AppStrings.next,),
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
            color: AppColors.color.kFormButtonsFill,
            borderRadius: AppBorders.buttonBorder12,
            border: Border.all(color: AppColors.color.kFormButtonsBorders, width: AppBorderWidths.width2,),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Image.asset("assets/icons/Complete_Profile/Camera.png"),
                AppSizes.size10.verticalSpace,
                Text("Add Cover Photo", style: AppStyles.textStyle10(
                  fontColor: AppColors.color.kSecondarySemiGreyText,
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
          child: Image.asset("assets/icons/Complete_Profile/Image_Picker.png", width: 38.w, height: 38.h, fit: BoxFit.contain,),
        ),
      ],
    );
  }
}