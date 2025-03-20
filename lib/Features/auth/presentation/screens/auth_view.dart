import 'package:flutter/material.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/Core/constants/app_strings.dart';
import 'package:test_app/features/auth/presentation/widgets/app_form_header.dart';
import 'package:test_app/features/auth/presentation/widgets/auth_tab_bar.dart';

class AuthView extends StatelessWidget
{
  const AuthView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryBlue,
      body: const Column(
        children:
        [
          Expanded(
            flex: 1,
            child: FormHeader(
              isText: true,
              downleftText: AppStrings.welcomeBack,
              upperRightText: AppStrings.skip,
            )
          ),

          Expanded(
            flex: 3,
            child: AuthTabs()
          ),
        ],
      ),
    );
  }
}