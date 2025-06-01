import 'package:flutter/material.dart';
import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_images.dart';

class SplashScreen extends StatefulWidget
{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{
  @override
  void initState()
  {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () => AppRouter.router.pushReplacementNamed(AppRoutes.kAppSettings),);
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: AppColors.color.kBlue001,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset(AppAssets.iconsPNG.appLogo)],
        ),
      ),
    );
  }
}
