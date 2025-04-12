import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/services/localization/controller/localization_controller.dart';
import 'config/l10n/generated/app_localizations.dart';
import 'config/router/app_router.dart';
import 'config/themes/color_system/controller/theme_controller.dart';
import 'config/themes/app_themes.dart';

class TestApp extends ConsumerWidget
{
  const TestApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final themeMode = ref.watch(themeControllerProvider);
    final locale = ref.watch(localizationControllerProvider);
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child)
      {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          locale: locale,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          themeMode: themeMode,
          theme: AppTheme.lightTheme(),
          darkTheme: AppTheme.darkTheme(), 
          useInheritedMediaQuery: true,
        );
      },
    );
  }
}