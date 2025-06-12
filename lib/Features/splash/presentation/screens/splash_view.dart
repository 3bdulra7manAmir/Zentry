import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/services/localization/controller/localization_controller.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
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
    final currentLocale = ref.watch(localizationControllerProvider);
    final isArabic = currentLocale.languageCode == 'ar';
    return Scaffold(
      backgroundColor: AppColors.color.kBlue001,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()..scale(isArabic ? -1.0 : 1.0, 1.0),
              child: Image.asset(AppAssets.iconsPNG.appLogo),
            ),
          ],
        ),
      ),
    );
  }
}
