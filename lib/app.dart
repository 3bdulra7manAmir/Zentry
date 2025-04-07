import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/router/app_router.dart';
import 'config/themes/app_colors/app_colors.dart';
import 'config/themes/app_colors/theme_controller.dart';
import 'config/themes/app_themes.dart';

class TestApp extends ConsumerWidget
{
  const TestApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final themeMode = ref.watch(themeControllerProvider);
    AppColors.i.themeMode = themeMode == ThemeMode.dark ? 'dark' : 'light';

    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child)
      {
        return DevicePreview(
          enabled: false,
          builder: (context) => MaterialApp.router(
            builder: DevicePreview.appBuilder,
            locale: DevicePreview.locale(context),
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            themeMode: themeMode,
            theme: AppTheme.lightTheme(),
            darkTheme: AppTheme.darkTheme(), 
            useInheritedMediaQuery: true,
          ),
        );
      },
    );
  }
}