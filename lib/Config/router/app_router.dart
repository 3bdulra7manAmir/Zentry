import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/forget_password/presentation/screens/forget_password_email_view.dart';
import '../../features/auth/forget_password/presentation/screens/forget_password_phone_view.dart';
import '../../features/auth/app_form/presentation/screens/app_form_view.dart';
import '../../features/auth/login/presentation/screens/auth_view.dart';
import '../../features/auth/login/presentation/widgets/login_email_form.dart';
import '../../features/auth/login/presentation/widgets/login_phone_form.dart';
import '../../features/auth/reset_password/presentation/screens/rest_password_view.dart';
import '../../features/auth/verification_code/presentation/screens/verification_code_view.dart';
import '../../features/splash/presentation/screens/splash_view.dart';
import 'app_routes.dart';

abstract class AppRouter
{
  AppRouter._();

  static final router = GoRouter(
    initialLocation: AppRoutes.kAuthView,
    errorBuilder: (_, _) => const Scaffold(body: Center(child: CircularProgressIndicator.adaptive()),),
    routes:
    [
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

      // App Login or SignUp View
      GoRoute(
        path: AppRoutes.kAuthView,
        name: AppRoutes.kAuthView,
        builder: (context, state) => const AuthView(),
      ),

      // App Login With Phone View
      GoRoute(
        path: AppRoutes.kLoginPhoneView,
        name: AppRoutes.kLoginPhoneView,
        builder: (context, state) => LoginFormWithPhone(),
      ),
      // App Login With Email View
      GoRoute(
        path: AppRoutes.kLoginEmailView,
        name: AppRoutes.kLoginEmailView,
        builder: (context, state) => LoginFormWithEmail(),
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

      // App Countries View
    ],
  );
}
