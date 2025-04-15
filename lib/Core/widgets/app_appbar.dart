import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/router/app_router.dart';
import '../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../config/themes/font_system/app_font_weights.dart';
import '../constants/app_images.dart';
import '../constants/app_styles.dart';
import '../helpers/app_providers.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget
{
  const CustomAppBar({
    super.key,
    this.barLeading,
    this.barTitle = '',
    this.isTitleCenterd = true,
    this.barActions,
  });

  final Widget? barLeading;
  final String barTitle;
  final bool isTitleCenterd;
  final List<Widget>? barActions;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    final arrow = provider.themeMode == ThemeMode.light ? AppAssets.iconsPNG.leftBackArrowBlackPNG : AppAssets.iconsPNG.rightWhiteArrowPNG;

    return AppBar(
      backgroundColor: AppColors.color.kAppBarBG,
      leading: GestureDetector(
        onTap: () => AppRouter.router.pop(),
        child: barLeading ?? Image.asset(arrow),
      ),
      leadingWidth: 65.w,
      title: Text(barTitle, style: AppStyles.textStyle14(fontWeight: AppFontWeights.semiBoldWeight, textColor: AppColors.color.kSenaryTotalBlackText,),
      ),
      centerTitle: isTitleCenterd,
      actions: barActions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
