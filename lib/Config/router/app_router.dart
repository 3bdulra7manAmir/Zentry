import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/forget_password/presentation/screens/forget_password_email_view.dart';
import '../../features/auth/forget_password/presentation/screens/forget_password_phone_view.dart';
import '../../features/auth/app_form/presentation/screens/app_form_view.dart';
import '../../features/auth/login/presentation/screens/auth_view.dart';
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
    initialLocation: AppRoutes.kHomeView, //kSearchResultsView //kSearchView //kHomeView //kTestView
    errorBuilder: (_, _) => const Scaffold(body: Center(child: CircularProgressIndicator.adaptive()),),
    routes:
    [
      //App Splash View
      GoRoute(
        path: AppRoutes.kTestView,
        name: AppRoutes.kTestView,
        builder: (context, state) => const MyHomePage(),
      ),
      
      //App Splash View
      GoRoute(
        path: AppRoutes.kSplashView,
        name: AppRoutes.kSplashView,
        builder: (context, state) => const SplashView(),
      ),

      //App Form View
      GoRoute(
        path: AppRoutes.kAppFormView,
        name: AppRoutes.kAppFormView,
        builder: (context, state) => const FormView(),
      ),

      // App Login or SignUp Form View
      GoRoute(
        path: AppRoutes.kAuthView,
        name: AppRoutes.kAuthView,
        builder: (context, state) => const AuthView(),
      ),

      // App Forget Password With Phone View
      GoRoute(
        path: AppRoutes.kForgetPasswordPhoneView,
        name: AppRoutes.kForgetPasswordPhoneView,
        builder: (context, state) => ForgetPasswordWithPhoneView(),
      ),

      // App Forget Password With Email View
      GoRoute(
        path: AppRoutes.kForgetPasswordEmailView,
        name: AppRoutes.kForgetPasswordEmailView,
        builder: (context, state) => ForgetPasswordWithEmailView(),
      ),

      // App Rest Password View
      GoRoute(
        path: AppRoutes.kResetPasswordView,
        name: AppRoutes.kResetPasswordView,
        builder: (context, state) => RestPasswordView(),
      ),

      // App Verification Code View
      GoRoute(
        path: AppRoutes.kVerificationCodeView,
        name: AppRoutes.kVerificationCodeView,
        builder: (context, state) => const VerificationCodeView(),
      ),

      // App Notifications View
      GoRoute(
        path: AppRoutes.kNotificationsView,
        name: AppRoutes.kNotificationsView,
        builder: (context, state) => const NotificationsView(),
      ),

      // App Search Notifications View
      GoRoute(
        path: AppRoutes.kNotificationsSearchView,
        name: AppRoutes.kNotificationsSearchView,
        builder: (context, state) => const NotificationsSearchView(),
      ),

      // App Search Notifications View
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

      // App Notifications View
      GoRoute(
        path: AppRoutes.kHomeView,
        name: AppRoutes.kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
