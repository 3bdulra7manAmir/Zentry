import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/router/app_router.dart';
import '../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../config/themes/font_system/app_font_weights.dart';
import '../constants/app_images.dart';
import '../constants/app_styles.dart';


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
      leading: GestureDetector(
          onTap: () => AppRouter.router.pop(),
          child: barLeading ?? Image.asset(AppAssets.iconsPNG.leftBackArrowBlackPNG),
        ),
      leadingWidth: 65.w,
      

      title: Text(barTitle ?? "NULL TEXT", style: AppStyles.textStyle14(fontWeight: AppFontWeights.semiBoldWeight, textColor: AppColors.color.korLoginWithColor),),
      centerTitle: isTitleCenterd ?? true,

      actions: barActions,
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}