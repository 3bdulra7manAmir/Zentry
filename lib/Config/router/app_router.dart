// ignore_for_file: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/core/widgets/app_circular_indicator.dart';
import '../../features/auth/forget_password/presentation/screens/forget_password_view.dart';
import '../../features/auth/app_settings/presentation/screens/app_settings_view.dart';
import '../../features/auth/login/presentation/screens/auth_view.dart';
import '../../features/auth/reset_password/presentation/screens/rest_password_view.dart';
import '../../features/auth/verification_code/presentation/screens/verification_code_view.dart';
import '../../core/widgets/bottom_nav_bar/screens/bottom_nav_bar.dart';
import '../../features/home/presentation/screens/home_view.dart';
import '../../features/home/presentation/widgets/posts_feed_view/post_card/post_opened.dart';
import '../../features/home/presentation/widgets/stories_scroll_view/story_opened.dart';
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
    initialLocation: AppRoutes.kSplash,
    errorBuilder: (_, _) => const Scaffold(body: Center(child: AppCircularIndicator()),),
    routes:
    [
      ///[App_Bottom_Nav_Bar_Temp]
      GoRoute(
        path: AppRoutes.kTest,
        name: AppRoutes.kTest,
        builder: (context, state) => const MyHomePage(),
      ),
      
      ///[App_Splash]
      GoRoute(
        path: AppRoutes.kSplash,
        name: AppRoutes.kSplash,
        builder: (context, state) => const SplashScreen(),
      ),

      ///[App_Form]
      GoRoute(
        path: AppRoutes.kAppSettings,
        name: AppRoutes.kAppSettings,
        builder: (context, state) => const AppSettingsScreen(),
      ),

      ///[App_Login_and_SignUp_Form]
      GoRoute(
        path: AppRoutes.kAuthTabs,
        name: AppRoutes.kAuthTabs,
        builder: (context, state) => const AuthScreen(),
      ),

      ///[App_Forget_Password_With_Phone]
      GoRoute(
        path: AppRoutes.kForgetPassword,
        name: AppRoutes.kForgetPassword,
        builder: (context, state) => ForgetPasswordScreen(),
      ),

      ///[App_Rest_Password]
      GoRoute(
        path: AppRoutes.kResetPassword,
        name: AppRoutes.kResetPassword,
        builder: (context, state) => RestPasswordScreen(),
      ),

      ///[App_Verification_Code]
      GoRoute(
        path: AppRoutes.kVerification,
        name: AppRoutes.kVerification,
        builder: (context, state) => const VerificationScreen(),
      ),

      ///[App_Notifications]
      GoRoute(
        path: AppRoutes.kNotifications,
        name: AppRoutes.kNotifications,
        builder: (context, state) => const NotificationsScreen(),
      ),

      ///[App_Search_Notifications]
      GoRoute(
        path: AppRoutes.kNotificationsSearch,
        name: AppRoutes.kNotificationsSearch,
        builder: (context, state) => const NotificationsSearchScreen(),
      ),

      ///[App_Search_Notifications]
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

      ///[App_Home]
      GoRoute(
        path: AppRoutes.kHome,
        name: AppRoutes.kHome,
        builder: (context, state) => const HomeScreen(),
      ),

      GoRoute(
        path: AppRoutes.kPostOpened,
        name: AppRoutes.kPostOpened,
        builder: (context, state)
        {
          final imagePath = state.extra as String;
          return PostOpened(carImage: imagePath);
        },
      ),
      
      GoRoute(
      path: AppRoutes.kStoryOpened,
      name: AppRoutes.kStoryOpened,
      builder: (context, state)
      {
        final imagePath = state.extra as String;
        return StoryOpened(storyImage: imagePath);
      },
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
