import 'package:test_app/Config/router/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/Features/auth/presentation/screens/login_view.dart';
import 'package:test_app/Features/splash/presentation/screens/splash_view.dart';

abstract class AppRouter
{
  AppRouter._();

  static final router = GoRouter(
    initialLocation: AppRoutes.kLoginView,
    //errorBuilder: (context, state) => ,
    //navigatorKey: ,
    //debugLogDiagnostics: true,
    routes:
    [
      GoRoute(
        path: AppRoutes.kSplashView,
        name: AppRoutes.kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRoutes.kLoginView,
        name: AppRoutes.kLoginView,
        builder: (context, state) => const LoginView(),
      ),
    ] 
  );
}
