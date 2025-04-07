import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/router/app_router.dart';
import 'config/themes/app_colors/app_colors.dart';
import 'config/themes/app_themes.dart';

class TestApp extends StatelessWidget
{
  const TestApp({super.key});

  // To keep track of the theme mode (light or dark)
  final ThemeMode _themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context)
  {
    // Update AppColors based on the current theme mode.
    AppColors.i.themeMode = _themeMode == ThemeMode.dark ? 'dark' : 'light';

    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child)
      {
        return DevicePreview(
          enabled: true,
          builder: (context) => MaterialApp.router(
            builder: DevicePreview.appBuilder,
            locale: DevicePreview.locale(context),
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            // Dynamically setting the theme based on the active _themeMode
            themeMode: _themeMode,
            theme: AppTheme.lightTheme(),
            darkTheme: AppTheme.darkTheme(), 
            useInheritedMediaQuery: true,
          ),
        );
      },
    );
  }
}