import 'package:flutter/material.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../widgets/app_form_header.dart';
import '../widgets/auth_tabbar.dart';

class AuthScreen extends StatelessWidget
{
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: AppColors.color.kBlue001,
      body: Column(
        children:
        [
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
