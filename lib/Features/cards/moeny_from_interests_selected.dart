import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../core/constants/app_borders.dart';
import '../../core/constants/app_padding.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/constants/app_strings.dart';
import '../../core/constants/app_styles.dart';
import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_listview_builder.dart';
import 'follow_business_page.dart';
import 'moeny_from_interests_list.dart';

void showMoenyFromInterestsSelectedBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    //isScrollControlled: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.indicatorBorder),
    builder: (BuildContext context)
    {
      return Padding(
        padding: AppPadding.kFollowingBusinessPagePadding,
        child: Column(
          children:
          [
            const FollowBusinessCardHeader(headerText: AppStrings.moenyFromInterests,),
            const MoenyFromInterestsCard(),
            AppSizes.size13.verticalSpace,
            const RepeatedCardGridModalContent(),
            AppSizes.size13.verticalSpace,
            Expanded(
              child: AppListviewBuilder(
                itemBuilder: (context, index) => const MoenyFromInterestsCard(), 
                itemCount: 8, 
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
        ),
      );
    },
  );
}

class RepeatedCardGridModalContent extends StatefulWidget
{
  const RepeatedCardGridModalContent({super.key});

  @override
  State<RepeatedCardGridModalContent> createState() => _RepeatedCardGridModalContentState();
}

class _RepeatedCardGridModalContentState extends State<RepeatedCardGridModalContent>
{
  final int itemCount = 8;
  int? selectedIndex;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 11.h),
      width: 322.w,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.color.kRobotBoyRadiusColor, width: AppBorderWidths.width2),
        borderRadius: AppBorders.postPriceCard8,
      ),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 12,
          mainAxisSpacing: 8,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index)
        {
          bool isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {setState(() {selectedIndex = index;});},
            child: Column(
              children:
              [
                Stack(
                  alignment: Alignment.topRight,
                  children:
                  [
                    Container(
                      height: 45.h, width: 45.w,
                      decoration: BoxDecoration(
                        color: isSelected ? AppColors.color.kRobotBoyRadiusColor : AppColors.color.kSecondaryWhite,
                        borderRadius: AppBorders.kProductItemRadius,
                      ),
                      child: Image.asset("assets/icons/Money_From_Interests/Car.png", width: 45.w, height: 45.h, fit: BoxFit.contain,),
                    ),
                    if (isSelected)
                      Positioned(top: -4.h, left: 2.w, child: Image.asset("assets/icons/Money_From_Interests_Selected/Star.png"),),
                  ],
                ),
                AppSizes.size6.verticalSpace,
                Text("Cars", style: AppStyles.textStyle10(fontColor: AppColors.color.kSenaryTotalBlackText),textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
