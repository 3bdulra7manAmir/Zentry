import 'package:flutter/material.dart';

import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import 'app_login_phone_form.dart';
import 'app_signup_form.dart';


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
              labelColor: AppColors.color.kTabBar,
              padding: AppPadding.kTabBarPadding,
              labelStyle: AppStyles.textStyle14(fontWeight: AppFontWeights.semiBoldWeight, textColor: AppColors.color.kTabBar),
              indicatorWeight: AppSizes.size4,
              unselectedLabelColor: AppColors.color.kSecondarySemiGreyText,
              indicatorColor: AppColors.color.kTabBar,
              tabs: [Tab(text: AppLocalizations.of(context).login,), Tab(text: AppLocalizations.of(context).signUp),],
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