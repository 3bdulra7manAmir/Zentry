import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../domain/entity/story_entity.dart';

class UsersStory extends StatelessWidget
{
  const UsersStory({super.key, required this.story,});

  final StoryEntity story;
  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 148.h,
      width: 112.w,
      decoration: BoxDecoration(
        borderRadius: AppBorders.buttonBorder5,
        image: DecorationImage(
          image: AssetImage(story.backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: AppPadding.kHomeListViewPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSizes.size9.verticalSpace,
            Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                borderRadius: AppBorders.kProductItemRadius,
                border: Border.all(
                  color: AppColors.color.kRobotBoyRadiusColor,
                  width: 2.w,
                ),
              ),
              child: ClipRRect(
                borderRadius: AppBorders.kProductItemRadius,
                child: Image.asset(story.userAvatar, fit: BoxFit.cover,),
              ),
            ),
            const Spacer(),
            Text(story.name, style: AppStyles.textStyle10(
                fontColor: AppColors.color.kSecondaryWhite,
                fontWeight: AppFontWeights.extraBoldWeight,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            AppSizes.size10.verticalSpace,
          ],
        ),
      ),
    );
  }
}