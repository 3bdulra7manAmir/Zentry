import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../post_actions/actions_card.dart';

class PostHeader extends StatelessWidget
{
  final String userImage;
  final String username;
  final String time;

  const PostHeader({
    super.key,
    required this.userImage,
    required this.username,
    required this.time,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Image.asset(userImage),
        AppSizes.size8.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Text(username, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002, fontWeight: AppFontWeights.semiBoldWeight,),),
            AppSizes.size4.verticalSpace,
            Text(time, style: AppStyles.textStyle10(fontColor: AppColors.color.kGreyText004, fontWeight: AppFontWeights.mediumWeight,),),
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: () => showActionsBottomSheet(context),
          child: Image.asset(AppAssets.iconsPNG.homeThreeDots),
        ),
      ],
    );
  }
}