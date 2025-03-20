import 'package:flutter/material.dart';
import 'package:test_app/Core/constants/app_borders.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/core/constants/app_strings.dart';
import 'package:test_app/features/auth/presentation/widgets/login_form.dart';
import 'package:test_app/features/auth/presentation/widgets/signup_form.dart';

class AuthTabs extends StatelessWidget
{
  const AuthTabs({super.key});

  @override
  Widget build(BuildContext context)
  {
    return DefaultTabController(
      length: 2,
      child: Column(
        children:
        [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: AppBorders.formBorderRadius,
              color: AppColors.kWhite,
            ),

            child:  const TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.orange,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.orange,
              
              tabs: [Tab(text: AppStrings.login,), Tab(text: AppStrings.signUp),],
            ),
          ),

          const Expanded(            
            child: TabBarView(
              children:
              [
                LoginForm(),
                SignUpForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}