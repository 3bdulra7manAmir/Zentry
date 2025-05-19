// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../register/presentation/screens/signup_email.dart';
import '../../../register/presentation/screens/signup_form_fullname.dart';
import '../../../register/presentation/screens/signup_form_phone.dart';
import '../../../register/presentation/screens/signup_invite.dart';
import '../controllers/email_phone_switcher.dart';
import 'login_form_email.dart';
import 'login_form_phone.dart';

class AuthTabs extends ConsumerWidget
{
  const AuthTabs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return DefaultTabController(
      length: 2,
      child: Column(
        children:
        [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: AppBorders.formBorder,
              color: Theme.of(context).cardColor,
            ),
            child: TabBar(
              padding: AppPadding.kTabBarPadding,
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
                provider.loginType == LoginType.phone ? LoginFormWithPhone() : LoginFormWithEmail(),
                //SignUpFormInvite(),
                //SignUpFormFullName(),
                //SignUpFormPhoneNumber(),
                SignUpFormEmail(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
