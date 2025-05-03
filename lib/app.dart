import 'package:device_preview/device_preview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/helpers/app_providers.dart';
import 'config/l10n/generated/app_localizations.dart';
import 'config/router/app_router.dart';
import 'config/themes/app_themes.dart';


class TestApp extends ConsumerWidget
{
  const TestApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => DevicePreview(
        builder: (context) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          locale: provider.locale,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          themeMode: provider.themeMode,
          theme: AppTheme.lightTheme(),
          darkTheme: AppTheme.darkTheme(),
          useInheritedMediaQuery: true,
        ),
      ),
    );
  }
}