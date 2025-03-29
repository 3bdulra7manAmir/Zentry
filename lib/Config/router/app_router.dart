import 'package:test_app/Config/router/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/features/auth/presentation/screens/auth_view.dart';
import 'package:test_app/features/auth/presentation/screens/forget_password_email_view.dart';
import 'package:test_app/features/auth/presentation/screens/forget_password_phone_view.dart';
import 'package:test_app/features/auth/presentation/screens/form_view.dart';
import 'package:test_app/features/auth/presentation/screens/rest_password_view.dart';
import 'package:test_app/features/auth/presentation/screens/verification_code_view.dart';
import 'package:test_app/features/auth/presentation/widgets/app_form/app_counties_listview.dart';
import 'package:test_app/features/auth/presentation/widgets/app_form/app_themes_listview.dart';
import 'package:test_app/features/splash/presentation/screens/splash_view.dart';


abstract class AppRouter
{
  AppRouter._();

  static final router = GoRouter(
    //initialLocation: AppRoutes.kAppFormView,
    initialLocation: AppRoutes.kLoginPhoneView,
    //errorBuilder: (context, state) => ,
    //navigatorKey: ,
    //debugLogDiagnostics: true,
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
      GoRoute(
        path: AppRoutes.kCountriesView,
        name: AppRoutes.kCountriesView,
        builder: (context, state) => const CountiesView(),
      ),

      // App Themes View
      GoRoute(
        path: AppRoutes.kThemesView,
        name: AppRoutes.kThemesView,
        builder: (context, state) => const ThemesView(),
      ),

      // // App Test View
      // GoRoute(
      //   path: AppRoutes.kTestView,
      //   name: AppRoutes.kTestView,
      //   builder: (context, state) => const TestView(),
      // ),
    ] 
  );
}
