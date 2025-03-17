import 'package:test_app/Config/router/app_routes.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{
  AppRouter._();

  static final router = GoRouter(
    initialLocation: AppRoutes.kMainView,
    //errorBuilder: (context, state) => ,
    //navigatorKey: ,
    //debugLogDiagnostics: ,
    routes:
    [
      // GoRoute(
      //   path: AppRoutes.kMainView,
      //   name: AppRoutes.kMainView,
      //   builder: (context, state) => const MainView(),
      // ),
    ] 
  );
}
