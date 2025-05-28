import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/font_weights.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';

class FollowBusinessCardHeader extends StatelessWidget
{
  const FollowBusinessCardHeader({super.key, required this.headerText, this.actionsIcon});

  final String headerText;
  final Widget? actionsIcon;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children:
      [
        AppSizes.size15.verticalSpace,
        Row(
          children:
          [
            AppSizes.size10.horizontalSpace,
            Image.asset(AppAssets.iconsPNG.businessClose),
            const Spacer(),
            Text(headerText, style: AppStyles.textStyle12(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kBlack001,),),
            const Spacer(),
            actionsIcon ?? Image.asset(AppAssets.iconsPNG.businessVault),
            AppSizes.size16.horizontalSpace,
          ],
        ),
        Divider(color: AppColors.color.kGreyText010, thickness: AppSizes.size2,),
      ],
    );
  }
}

