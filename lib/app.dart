import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/router/app_router.dart';
import 'package:test_app/config/themes/app_themes.dart';
import 'package:test_app/config/themes/theme_controller.dart';
import 'package:test_app/core/constants/app_styles.dart';

class TestApp extends ConsumerWidget
{
  const TestApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    AppStyles.initializeTextColors(ref);
    final themeMode = ref.watch(themeNotifierProvider);
    
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child)
      {
        return DevicePreview(
          enabled: true,
          builder: (context) => MaterialApp.router(
            builder: DevicePreview.appBuilder,
            locale: DevicePreview.locale(context),
            routerConfig: AppRouter.router,
        
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme(),
            darkTheme: AppTheme.darkTheme(),
            themeMode: themeMode,

            useInheritedMediaQuery: true,
          ),
        );
      },
    );
  }
}