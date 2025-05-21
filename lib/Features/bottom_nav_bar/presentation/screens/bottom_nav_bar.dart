import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/font_weights.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';

class NavItem
{
  final String activeIcon;
  final String inactiveIcon;
  final String label;

  NavItem({
    required this.activeIcon,
    required this.inactiveIcon,
    required this.label,
    
  });
}


class MyHomePage extends StatefulWidget
{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin
{
  int _bottomNavIndex = 0;
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
    final List<NavItem> navItems =
    [
      NavItem(
        activeIcon: AppAssets.iconsPNG.homeSelectedPNG,
        inactiveIcon: AppAssets.iconsPNG.homePNG,
        label: AppLocalizations.of(context).home,
      ),
      NavItem(
        activeIcon: AppAssets.iconsPNG.categorySelectedPNG,
        inactiveIcon: AppAssets.iconsPNG.categoryPNG,
        label: AppLocalizations.of(context).category,
      ),
      NavItem(
        activeIcon: AppAssets.iconsPNG.profileSelectedPNG,
        inactiveIcon: AppAssets.iconsPNG.profilePNG,
        label: AppLocalizations.of(context).profile,
      ),
      NavItem(
        activeIcon: AppAssets.iconsPNG.menuSelectedPNG,
        inactiveIcon: AppAssets.iconsPNG.menuPNG,
        label: AppLocalizations.of(context).menu,
      ),
    ];
    return Scaffold(
      extendBody: true,
      body: Center(child: Text('Page $_bottomNavIndex')), // Sample page body
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Image.asset(AppAssets.iconsPNG.middlePNG, fit: BoxFit.contain,),
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
                  fontColor: isActive ? AppColors.color.kRobotBoyRadiusColor : AppColors.color.kSemiGrey4,
                  fontWeight: isActive ? AppFontWeights.semiBoldWeight : AppFontWeights.regularWeight,
                ),
              ),
            ],
          );
        },
        backgroundColor: AppColors.color.kSecondaryWhite,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        leftCornerRadius: 21.r,
        rightCornerRadius: 21.r,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        hideAnimationController: hideBottomBarAnimationController,
        shadow: BoxShadow(
          offset: const Offset(0, 1),
          blurRadius: 8.r,
          spreadRadius: 0.5.r,
          color: const Color(0x42000000),
        ),
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
