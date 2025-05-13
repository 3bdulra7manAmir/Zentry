import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/themes/font_system/app_font_weights.dart';
import 'package:test_app/core/constants/app_sizes.dart';
import 'package:test_app/core/constants/app_styles.dart';
import '../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../core/constants/app_borders.dart';
import '../../core/constants/app_padding.dart';
import '../../core/constants/app_strings.dart';
import '../../core/widgets/app_button.dart';
import 'follow_business/follow_business_page.dart';

void showJoinGroupsBottomSheet(BuildContext context)
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
          const FollowBusinessCardHeader(headerText: AppStrings.joinGroups,),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 30.0.w),
              child: GridViewBuilder(
                itemCount: 5,
                itemBuilder: (context, index) => const JoinGroupsCard(),
              ),
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


class GridViewBuilder extends StatelessWidget
{
  const GridViewBuilder({super.key,
  required this.itemCount,
  required this.itemBuilder,
  this.separatorBuilder,
  this.crossAxisCount,
  this.mainAxisSpacing,
  this.crossAxisSpacing,
  this.childAspectRatio,});
  
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder? separatorBuilder;
  final int? crossAxisCount;
  final double? mainAxisSpacing;
  final double? crossAxisSpacing;
  final double? childAspectRatio;

  @override
  Widget build(BuildContext context)
  {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.only(top: 20.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount ?? 2,
        mainAxisSpacing: mainAxisSpacing ?? 12.0,
        crossAxisSpacing: crossAxisSpacing ?? 12.0,
        childAspectRatio: childAspectRatio ?? 1.4,
      ),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}

class JoinGroupsCard extends StatelessWidget
{
  const JoinGroupsCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      clipBehavior: Clip.none,
      children:
      [
        Container(
          width: 149.w,
          height: 105.h,
          decoration: BoxDecoration(
            boxShadow:
            [
              BoxShadow(
                color: AppColors.color.kDatePicker.withOpacity(0.5),
                blurRadius: 5,
                offset: const Offset(0, 0),
                spreadRadius: 0,
              ),
            ],
            color: AppColors.color.kSecondaryWhite,
            borderRadius: AppBorders.buttonBorder10,
            border: Border.all(color: AppColors.color.kDatePicker, width: AppBorderWidths.width2,),
          ),
          child: Column(
            children:
            [
              AppSizes.size20.verticalSpace,
              Text(AppStrings.vehicles, style: AppStyles.textStyle12(fontColor: AppColors.color.kSenaryTotalBlackText),),
              AppSizes.size5.verticalSpace,
              Text("180,000 Member", style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kQuinarySemiBlueText),),
              AppSizes.size5.verticalSpace,
              Image.asset("assets/icons/Join_Groups/Members.png")
            ],
          ),
        ), 
        Positioned(
          top: -20.h,
          left: 0,
          right: 22.w,
          child: Image.asset("assets/icons/Join_Groups/Ferrari.png", width: 38.w, height: 38.h, fit: BoxFit.contain,),
        ),
      ],
    );

  }
}