import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/themes/app_colors/app_colors.dart';
import '../constants/app_images.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget
{
  const CustomAppBar({super.key, this.barLeading, this.barTitle, this.isTitleCenterd, this.barActions});

  final Widget? barLeading;
  final String? barTitle;
  final bool? isTitleCenterd;
  final List<Widget>? barActions;

  @override
  Widget build(BuildContext context)
  {
    return AppBar(
      backgroundColor: AppColors.color.kAppBarBG,
      leading: barLeading ?? Image.asset(AppAssets.iconsPNG.leftBackArrowBlackPNG),
      leadingWidth: 65.w,
      

      title: Text(barTitle ?? "NULL TEXT", style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.color.korLoginWithColor)), //AppStyles.textStyle14(fontWeight: AppFontWeights.semiBoldWeight, textColor: AppColors.color.korLoginWithColor),
      centerTitle: isTitleCenterd ?? true,

      actions: barActions,
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}