import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget
{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin
{
  int _bottomNavIndex = 0;

  final iconList =
  [
    Icons.home,
    Icons.grid_view,
    Icons.person_outline,
    Icons.menu,
  ];

  final labelList = [
    "Home",
    "Category",
    "Profile",
    "Menu",
  ];

  late AnimationController _fabAnimationController;
  late AnimationController _hideBottomBarAnimationController;
  late Animation<double> fabAnimation;

  @override
  void initState()
  {
    super.initState();

    _fabAnimationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    fabAnimation = CurvedAnimation(
      parent: _fabAnimationController,
      curve: Curves.easeInOut,
    );

    _hideBottomBarAnimationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    Future.delayed(const Duration(milliseconds: 500), () {
      _fabAnimationController.forward();
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      extendBody: true,
      body: Center(child: Text('Page $_bottomNavIndex')),
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Image.asset("assets/icons/Bottom_Nav_Bar/Middle.png", fit: BoxFit.contain,),
      ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? Colors.orange : Colors.grey;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconList[index], size: 24, color: color),
              const SizedBox(height: 4),
              Text(labelList[index], style: TextStyle(color: color, fontSize: 12)),
            ],
          );
        },
        backgroundColor: Colors.white,
        activeIndex: _bottomNavIndex,
        splashColor: Colors.orange,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        hideAnimationController: _hideBottomBarAnimationController,
        shadow: const BoxShadow(
          offset: Offset(0, 1),
          blurRadius: 8,
          spreadRadius: 0.5,
          color: Colors.black26,
        ),
      ),
    );
  }

  @override
  void dispose()
  {
    _fabAnimationController.dispose();
    _hideBottomBarAnimationController.dispose();
    super.dispose();
  }
}
