import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../controllers/email_or_phone_provider.dart';
import 'app_login_email_form.dart';
import 'app_login_phone_form.dart';
import 'app_signup_form.dart';

class AuthTabs extends ConsumerWidget {
  const AuthTabs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = AppProvidersProvider(ref, context);
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: AppBorders.formBorder,
              color: Theme.of(context).cardColor,
            ),
            child: TabBar(
              padding: AppPadding.kTabBarPadding,
              indicatorWeight: AppSizes.size4,
              tabs: [
                Tab(text: AppLocalizations.of(context).login),
                Tab(text: AppLocalizations.of(context).signUp),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                provider.loginType == LoginType.phone
                    ? LoginFormWithPhone()
                    : LoginFormWithEmail(),
                const SignUpForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
