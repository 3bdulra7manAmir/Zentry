import 'package:flutter/material.dart';
import '../../../../config/themes/app_colors/app_colors.dart';
import '../widgets/app_auth/auth_tabbar.dart';
import '../widgets/app_form/app_form_header.dart';


class AuthView extends StatelessWidget
{
  const AuthView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: AppColors.color.kPrimaryBlue,
      body: const Column(
        children:
        [
          Expanded(flex: 1, child: FormHeader()),

          Expanded(flex: 3, child: AuthTabs()),
        ],
      ),
    );
  }
}