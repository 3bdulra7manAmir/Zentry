import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/router/app_router.dart';
import 'package:test_app/config/router/app_routes.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';

class CustomHomeAppBar extends ConsumerWidget implements PreferredSizeWidget
{
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return AppBar(
      leadingWidth: 65.w,
      backgroundColor: Theme.of(context).cardColor,
      leading: GestureDetector(
        onTap: () {},
        child: Image.asset(AppAssets.iconsPNG.homeRobotBoy),
      ),
      actions:
      [
        GestureDetector(
          onTap: () => AppRouter.router.pushNamed(AppRoutes.kSearchView),
          child: CircleAvatar(
            backgroundColor: AppColors.color.kGrey002,
            child: Image.asset(AppAssets.iconsPNG.homeSearch)
          ),
        ),
        AppSizes.size8.horizontalSpace,
        GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            backgroundColor: AppColors.color.kGrey002,
            child: Image.asset(AppAssets.iconsPNG.homeMessages)
          ),
        ),
        AppSizes.size8.horizontalSpace,
        GestureDetector(
          onTap: () => AppRouter.router.pushNamed(AppRoutes.kNotificationsView),
          child: CircleAvatar(
            backgroundColor: AppColors.color.kGrey002,
            child: Image.asset(AppAssets.iconsPNG.homeNotificationsBill)
          ),
        ),
        AppSizes.size8.horizontalSpace,
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
