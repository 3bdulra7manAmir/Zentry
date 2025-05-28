import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../app_settings/presentation/controllers/initial_tabbar_controller.dart';
import '../../../register/presentation/controllers/email_or_phone_provider.dart';
import '../../../register/presentation/screens/signup_form_fullname.dart';
import '../../../register/presentation/screens/signup_form_phone.dart';
import '../screens/login_view.dart';

class AuthTabs extends ConsumerWidget
{
  const AuthTabs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    final selectedTabIndex = ref.watch(tabIndexProvider);
    return DefaultTabController(
      initialIndex: selectedTabIndex,
      length: 2,
      child: Column(
        children:
        [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: AppBordersRadiuses.topOnly20,
              color: Theme.of(context).cardColor,
            ),
            child: TabBar(
              
              padding: AppPadding.symmetric16,
              indicatorWeight: AppSizes.size4,
              tabs:
              [
                Tab(text: AppLocalizations.of(context).login),
                Tab(text: AppLocalizations.of(context).signUp),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children:
              [
                LoginScreen(),
                provider.signUpType == SignUpType.phone ? SignUpFormPhoneNumber() : SignUpFormFullName(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
