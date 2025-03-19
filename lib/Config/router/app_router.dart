import 'package:test_app/Config/router/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/features/auth/presentation/screens/auth_view.dart';
import 'package:test_app/features/auth/presentation/screens/form_view.dart';
import 'package:test_app/features/splash/presentation/screens/splash_view.dart';

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
        path: AppRoutes.kAppFormView,
        name: AppRoutes.kAppFormView,
        builder: (context, state) => const FormView(),
      ),
      
      GoRoute(
        path: AppRoutes.kLoginView,
        name: AppRoutes.kLoginView,
        builder: (context, state) => const AuthView(),
      ),
    ] 
  );
}
