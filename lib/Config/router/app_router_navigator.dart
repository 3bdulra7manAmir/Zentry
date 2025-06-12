import 'app_router.dart';
import 'package:go_router/go_router.dart';
import 'app_routes.dart';

extension AppRouterNavigator on GoRouter
{
  void pushAuthTab({required String tabInxdex})
  {
    AppRouter.router.pushNamed(AppRoutes.kAuthTabs, queryParameters: {'tab': tabInxdex});
  }

}
