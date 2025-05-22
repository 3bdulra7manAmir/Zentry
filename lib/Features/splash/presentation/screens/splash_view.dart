import 'package:flutter/material.dart';
import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_images.dart';

class SplashView extends StatefulWidget
{
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
{
  @override
  void initState()
  {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () => AppRouter.router.pushReplacementNamed(AppRoutes.kAppFormView),);
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
