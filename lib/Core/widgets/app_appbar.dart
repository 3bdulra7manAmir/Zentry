import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/router/app_router.dart';
import '../constants/app_images.dart';
import '../helpers/app_providers.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget
{
  const CustomAppBar({
    super.key,
    this.barLeading,
    this.barTitle,
    this.barActions,
    this.barActionsPadding,
    this.barLeadingWidth,
  });

  final Widget? barLeading;
  final Widget? barTitle;
  final List<Widget>? barActions;
  final EdgeInsetsGeometry? barActionsPadding;
  final double? barLeadingWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return AppBar(
      leading: GestureDetector(
        onTap: () => AppRouter.router.pop(),
        child: barLeading ?? Image.asset(provider.localeState.selectedLanguageIndex == 0
        ? (provider.themeMode == ThemeMode.dark
          ? AppAssets.iconsPNG.rightWhiteArrowPNG
          : AppAssets.iconsPNG.rightBackArrowBlackPNG)
        : (provider.themeMode == ThemeMode.dark
          ? AppAssets.iconsPNG.leftWhiteArrowPNG
          : AppAssets.iconsPNG.leftBackArrowBlackPNG)),
      ),
      leadingWidth: barLeadingWidth ?? 65.w,
      title: barTitle,
      actions: barActions,
      actionsPadding: barActionsPadding,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
