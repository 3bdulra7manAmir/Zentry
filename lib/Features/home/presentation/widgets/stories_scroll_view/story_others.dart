import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_borders_styles.dart';
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
      padding: AppPadding.directional.mediumStart,
      decoration: BoxDecoration(
        borderRadius: AppBordersRadiuses.circular.smallButton,
        image: DecorationImage(image: AssetImage(story.backgroundImage), fit: BoxFit.cover,),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          AppSizes.size9.verticalSpace,
          Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(borderRadius: AppBordersRadiuses.circular.productItem, border: AppFullBorders.othersStoryCard,),
            child: ClipRRect(
              borderRadius: AppBordersRadiuses.circular.productItem,
              child: Image.asset(story.userAvatar, fit: BoxFit.cover,),
            ),
          ),
          const Spacer(),
          Text(story.name, style: AppStyles.textStyle10(
              fontColor: AppColors.color.kWhite001,
              fontWeight: AppFontWeights.extraBoldWeight,
            ),maxLines: 2, overflow: TextOverflow.ellipsis,
          ),
          AppSizes.size10.verticalSpace,
        ],
      ),
    );
  }
}