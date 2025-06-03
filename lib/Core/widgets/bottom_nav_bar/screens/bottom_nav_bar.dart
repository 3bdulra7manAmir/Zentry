import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/font_weights.dart';
import '../../../constants/app_images.dart';
import '../../../constants/app_shadow_boxes.dart';
import '../../../constants/app_sizes.dart';
import '../../../constants/app_styles.dart';
import '../../../helpers/app_providers.dart';
import '../controller/bottom_nav_index_provider.dart';
import '../widgets/nav_bar_list.dart';

class MyHomePage extends ConsumerStatefulWidget
{
  const MyHomePage({super.key});

  @override
  ConsumerState<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends ConsumerState<MyHomePage> with TickerProviderStateMixin
{
  late AnimationController fabAnimationController;
  late AnimationController hideBottomBarAnimationController;
  late Animation<double> fabAnimation;

  @override
  void initState()
  {
    super.initState();
    fabAnimationController = AnimationController(duration: const Duration(milliseconds: 500), vsync: this,);
    fabAnimation = CurvedAnimation(parent: fabAnimationController, curve: Curves.easeInOut,);
    hideBottomBarAnimationController = AnimationController(duration: const Duration(milliseconds: 200), vsync: this,);
    Future.delayed(const Duration(milliseconds: 500), ()
    {
      fabAnimationController.forward();
    });
  }

  @override
  Widget build(BuildContext context)
  {
    final navItems = getNavItems(context);
    final provider = AppProvidersProvider(ref, context);
    return Scaffold(
      extendBody: true,
      body: Center(child: Text('Page ${provider.currentBottomNavIndex}')),
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Image.asset(AppAssets.iconsPNG.navMiddle, fit: BoxFit.contain,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: navItems.length,
        tabBuilder: (int index, bool isActive)
        {
          final item = navItems[index];
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              AppSizes.size8.verticalSpace,
              Image.asset(isActive ? item.activeIcon : item.inactiveIcon, width: 24.w,),
              const Spacer(),
              Text(item.label, style: AppStyles.textStyle12(
                  fontColor: isActive ? AppColors.color.kOrange003 : AppColors.color.kGreyText011,
                  fontWeight: isActive ? AppFontWeights.semiBoldWeight : AppFontWeights.regularWeight,
                ),
              ),
            ],
          );
        },
        backgroundColor: AppColors.color.kWhite001,
        activeIndex: provider.currentBottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        leftCornerRadius: 21.r,
        rightCornerRadius: 21.r,
        onTap: (index) => ref.read(bottomNavIndexProvider.notifier).setIndex(index),
        hideAnimationController: hideBottomBarAnimationController,
        shadow: AppShadowBoxes.bottomNavBar,
      ),
    );
  }

  @override
  void dispose()
  {
    fabAnimationController.dispose();
    hideBottomBarAnimationController.dispose();
    super.dispose();
  }
}
