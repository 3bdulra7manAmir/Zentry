import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/screens/auth_view.dart';
import '../../features/auth/presentation/screens/forget_password_email_view.dart';
import '../../features/auth/presentation/screens/forget_password_phone_view.dart';
import '../../features/auth/presentation/screens/app_form_view.dart';
import '../../features/auth/presentation/screens/rest_password_view.dart';
import '../../features/auth/presentation/screens/verification_code_view.dart';
import '../../features/splash/presentation/screens/splash_view.dart';
import 'app_routes.dart';

abstract class AppRouter
{
  AppRouter._();

  static final router = GoRouter(
    initialLocation: AppRoutes.kAppFormView,
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

      // App Login With Phone View
      GoRoute(
        path: AppRoutes.kLoginPhoneView,
        name: AppRoutes.kLoginPhoneView,
        builder: (context, state) => const AuthView(),
      ),
      // App Login With Email View
      GoRoute(
        path: AppRoutes.kLoginEmailView,
        name: AppRoutes.kLoginEmailView,
        builder: (context, state) => const AuthView(),
      ),

      // App Forget Password With Phone View
      GoRoute(
        path: AppRoutes.kForgetPasswordPhoneView,
        name: AppRoutes.kForgetPasswordPhoneView,
        builder: (context, state) => const ForgetPasswordWithPhoneView(),
      ),

      // App Forget Password With Email View
      GoRoute(
        path: AppRoutes.kForgetPasswordEmailView,
        name: AppRoutes.kForgetPasswordEmailView,
        builder: (context, state) => const ForgetPasswordWithEmailView(),
      ),

      // App Rest Password View
      GoRoute(
        path: AppRoutes.kResetPasswordView,
        name: AppRoutes.kResetPasswordView,
        builder: (context, state) => const RestPasswordView(),
      ),

      // App Verification Code View
      GoRoute(
        path: AppRoutes.kVerificationCodeView,
        name: AppRoutes.kVerificationCodeView,
        builder: (context, state) => const VerificationCodeView(),
      ),

      // App Countries View
    ] 
  );
}
