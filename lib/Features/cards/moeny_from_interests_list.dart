import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/themes/font_system/app_font_weights.dart';
import 'package:test_app/core/constants/app_styles.dart';
import 'package:test_app/core/widgets/app_listview_builder.dart';
import '../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../core/constants/app_borders.dart';
import '../../core/constants/app_padding.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/constants/app_strings.dart';
import '../../core/widgets/app_button.dart';
import 'follow_business_page.dart';

void showMoenyFromInterestsListBottomSheet(BuildContext context)
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
          const FollowBusinessCardHeader(headerText: AppStrings.moenyFromInterests,),
          Expanded(
            child: AppListviewBuilder(
              itemBuilder: (context, index) => const MoenyFromInterestsCard(), 
              itemCount: 14, 
              separatorBuilder: (context, index) => AppSizes.size13.verticalSpace,
            ),
          ),

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


class MoenyFromInterestsCard extends StatelessWidget
{

  const MoenyFromInterestsCard({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Radio(value: "value", groupValue: "groupValue", onChanged: (value) {},),
        Container(
          width: 48.w, height: 48.h,
          decoration: BoxDecoration(
            color: AppColors.color.kSecondaryWhite,
            borderRadius: AppBorders.kProductItemRadius,
          ),
          child: Image.asset("assets/icons/Money_From_Interests/Car.png", width: 45.w, height: 25.h,),
        ),
        AppSizes.size8.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Row(
              children:
              [
                Text("interested in", style: AppStyles.textStyle12(
                  fontColor: AppColors.color.kSenaryTotalBlackText,
                  fontWeight: AppFontWeights.semiBoldWeight),
                ),
                AppSizes.size5.horizontalSpace,
                Text("Vechiles",style: AppStyles.textStyle12(
                  fontColor: AppColors.color.kQuinarySemiBlueText,
                  fontWeight: AppFontWeights.semiBoldWeight),
                ),
              ],
            ),
            Row(
              children:
              [
                Text("400,000", style: AppStyles.textStyle10(fontWeight: AppFontWeights.semiBoldWeight),),
                AppSizes.size3.horizontalSpace,
                Text("Other user", style: AppStyles.textStyle10(fontWeight: AppFontWeights.semiBoldWeight),),
              ],
            ),
          ],
        ),

      ],
    );
  }
}