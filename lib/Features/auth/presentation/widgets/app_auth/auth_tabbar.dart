import 'package:flutter/material.dart';
import 'package:test_app/Core/constants/app_borders.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/Core/constants/app_padding.dart';
import 'package:test_app/config/themes/app_sizes.dart';

import 'package:test_app/core/constants/app_strings.dart';
import 'package:test_app/features/auth/presentation/widgets/app_auth/app_login_phone_form.dart';
import 'package:test_app/features/auth/presentation/widgets/app_auth/app_signup_form.dart';

import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_styles.dart';

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
              borderRadius: AppBorders.formBorder,
              color: Theme.of(context).cardColor,
            ),

            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: AppColors.kAuthTab,
              padding: AppPadding.kTabBarPadding,
              labelStyle: AppStyles.textStyle14(fontWeight: AppFontWeights.semiBoldWeight, textColor: AppColors.kAuthTab),
              indicatorWeight: AppSizes.size4,
              unselectedLabelColor: AppColors.kSecondary,
              indicatorColor: AppColors.kAuthTab,
              tabs: const [Tab(text: AppStrings.login,), Tab(text: AppStrings.signUp),],
            ),
          ),

          const Expanded(            
            child: TabBarView(
              children:
              [
                LoginFormWithPhone(),
                SignUpForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}