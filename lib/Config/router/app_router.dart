// ignore_for_file: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/core/widgets/app_circular_indicator.dart';
import '../../features/auth/forget_password/presentation/screens/forget_password_view.dart';
import '../../features/auth/app_settings/presentation/screens/app_settings_view.dart';
import '../../features/auth/login/presentation/screens/auth_view.dart';
import '../../features/auth/register/presentation/screens/signup_invite.dart';
import '../../features/auth/reset_password/presentation/screens/rest_password_view.dart';
import '../../features/auth/verification_code/presentation/screens/verification_code_view.dart';
import '../../features/bottom_nav_bar/presentation/screens/bottom_nav_bar.dart';
import '../../features/home/presentation/screens/home_view.dart';
import '../../features/notifications/presentation/screens/notifications_search_view.dart';
import '../../features/notifications/presentation/screens/notifications_view.dart';
import '../../features/search/presentation/screens/search_results_view.dart';
import '../../features/search/presentation/screens/search_view.dart';
import '../../features/splash/presentation/screens/splash_view.dart';
import 'app_routes.dart';

abstract class AppRouter
{
  AppRouter._();
  static final navigatorState = GlobalKey<NavigatorState>(debugLabel: 'root');
  static final router = GoRouter(
    navigatorKey: navigatorState,
    debugLogDiagnostics: kDebugMode,
    initialLocation: AppRoutes.kAppSettings,
    errorBuilder: (_, _) => const Scaffold(body: Center(child: AppCircularIndicator()),),
    routes:
    [
      ///App Bottom Nav Bar Temp
      GoRoute(
        path: AppRoutes.kTest,
        name: AppRoutes.kTest,
        builder: (context, state) => const MyHomePage(),
      ),
      
      ///App Splash View
      GoRoute(
        path: AppRoutes.kSplash,
        name: AppRoutes.kSplash,
        builder: (context, state) => const SplashScreen(),
      ),

      ///App Form View
      GoRoute(
        path: AppRoutes.kAppSettings,
        name: AppRoutes.kAppSettings,
        builder: (context, state) => const AppSettingsScreen(),
      ),

      /// App Login or SignUp Form View
      GoRoute(
        path: AppRoutes.kAuthTabs,
        name: AppRoutes.kAuthTabs,
        builder: (context, state) => const AuthScreen(),
      ),

      /// App Forget Password With Phone View
      GoRoute(
        path: AppRoutes.kForgetPassword,
        name: AppRoutes.kForgetPassword,
        builder: (context, state) => ForgetPasswordScreen(),
      ),

      /// App Rest Password View
      GoRoute(
        path: AppRoutes.kResetPassword,
        name: AppRoutes.kResetPassword,
        builder: (context, state) => RestPasswordScreen(),
      ),

      /// App Verification Code View
      GoRoute(
        path: AppRoutes.kVerification,
        name: AppRoutes.kVerification,
        builder: (context, state) => const VerificationScreen(),
      ),

      /// App Notifications View
      GoRoute(
        path: AppRoutes.kNotifications,
        name: AppRoutes.kNotifications,
        builder: (context, state) => const NotificationsScreen(),
      ),

      /// App Search Notifications View
      GoRoute(
        path: AppRoutes.kNotificationsSearch,
        name: AppRoutes.kNotificationsSearch,
        builder: (context, state) => const NotificationsSearchScreen(),
      ),

      /// App Search Notifications View
      GoRoute(
        path: AppRoutes.kSearch,
        name: AppRoutes.kSearch,
        builder: (context, state) => const SearchScreen(),
      ),

      GoRoute(
        path: AppRoutes.kSearchResults,
        name: AppRoutes.kSearchResults,
        builder: (context, state) => const SearchResultsScreen(),
      ),

      /// App Notifications View
      GoRoute(
        path: AppRoutes.kHome,
        name: AppRoutes.kHome,
        builder: (context, state) => const HomeScreen(),
      ),

      /// App Bottom Navigation Bar
      // StatefulShellRoute.indexedStack(
      //   builder: (context, state, navigationShell) => BottomNavExample(navigationShell: navigationShell),
      //   branches: [
      //     StatefulShellBranch(
      //       initialLocation: AppRoutes.kHomeView,
      //       routes: [
      //         GoRoute(
      //           name: AppRoutes.kHomeView,
      //           path: AppRoutes.kHomeView,
      //           builder: (context, state) => const HomePage(),
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       initialLocation: AppRoutes.kSearchView,
      //       routes: [
      //         GoRoute(
      //           name: AppRoutes.kSearchView,
      //           path: AppRoutes.kSearchView,
      //           builder: (context, state) => const SearchPage(),
      //         ),
      //       ],
      //     ),

      //     StatefulShellBranch(
      //       initialLocation: AppRoutes.kProfileView,
      //       routes:
      //       [
      //         GoRoute(
      //           name: AppRoutes.kProfileView,
      //           path: AppRoutes.kProfileView,
      //           builder: (context, state) => const ProfilePage(),
      //         ),
      //       ],
      //     ),
      //   ],
      //),
    ],
  );
}
