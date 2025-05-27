// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
  static final router = GoRouter(
    initialLocation: AppRoutes.kAppFormView,
    errorBuilder: (_, _) => const Scaffold(body: Center(child: CircularProgressIndicator.adaptive()),),
    routes:
    [
      ///App Splash View
      GoRoute(
        path: AppRoutes.kTestView,
        name: AppRoutes.kTestView,
        builder: (context, state) => const MyHomePage(),
      ),
      
      ///App Splash View
      GoRoute(
        path: AppRoutes.kSplashView,
        name: AppRoutes.kSplashView,
        builder: (context, state) => const SplashView(),
      ),

      ///App Form View
      GoRoute(
        path: AppRoutes.kAppFormView,
        name: AppRoutes.kAppFormView,
        builder: (context, state) => const AppSettingsView(),
      ),

      /// App Login or SignUp Form View
      GoRoute(
        path: AppRoutes.kAuthView,
        name: AppRoutes.kAuthView,
        builder: (context, state) => const AuthView(),
      ),

      /// App Login or SignUp Form View
      GoRoute(
        path: AppRoutes.kSignUpInviteView,
        name: AppRoutes.kSignUpInviteView,
        builder: (context, state) => SignUpFormInvite(),
      ),

      /// App Forget Password With Phone View
      GoRoute(
        path: AppRoutes.kForgetPassword,
        name: AppRoutes.kForgetPassword,
        builder: (context, state) => ForgetPassword(),
      ),

      /// App Forget Password With Email View
      GoRoute(
        path: AppRoutes.kForgetPasswordEmailView,
        name: AppRoutes.kForgetPasswordEmailView,
        builder: (context, state) => ForgetPassword(),
      ),

      /// App Rest Password View
      GoRoute(
        path: AppRoutes.kResetPasswordView,
        name: AppRoutes.kResetPasswordView,
        builder: (context, state) => RestPasswordView(),
      ),

      /// App Verification Code View
      GoRoute(
        path: AppRoutes.kVerificationCodeView,
        name: AppRoutes.kVerificationCodeView,
        builder: (context, state) => const VerificationCodeView(),
      ),

      /// App Notifications View
      GoRoute(
        path: AppRoutes.kNotificationsView,
        name: AppRoutes.kNotificationsView,
        builder: (context, state) => const NotificationsView(),
      ),

      /// App Search Notifications View
      GoRoute(
        path: AppRoutes.kNotificationsSearchView,
        name: AppRoutes.kNotificationsSearchView,
        builder: (context, state) => const NotificationsSearchView(),
      ),

      /// App Search Notifications View
      GoRoute(
        path: AppRoutes.kSearchView,
        name: AppRoutes.kSearchView,
        builder: (context, state) => const SearchView(),
      ),

      GoRoute(
        path: AppRoutes.kSearchResultsView,
        name: AppRoutes.kSearchResultsView,
        builder: (context, state) => const SearchResultsView(),
      ),

      /// App Notifications View
      GoRoute(
        path: AppRoutes.kHomeView,
        name: AppRoutes.kHomeView,
        builder: (context, state) => const HomeView(),
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
