import 'package:flutter/material.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../widgets/app_form_header.dart';
import '../widgets/auth_tabbar.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color.kPrimaryBlue,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: FormHeader(
              isText: true,
              downleftText: AppLocalizations.of(context).welcomeBack,
              upperRightText: AppLocalizations.of(context).skip,
              //upperRightTextOnTap: () => AppRouter.router.pushNamed(name),
            ),
          ),
          const Expanded(flex: 3, child: AuthTabs()),
        ],
      ),
    );
  }
}
