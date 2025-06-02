import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../config/router/app_router.dart';
import '../../../../../../config/router/app_routes.dart';
import '../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/helpers/app_providers.dart';
import '../../../../../../core/widgets/app_buttons/app_button.dart';

class LoginButton extends ConsumerWidget
{
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return CustomButton(
      buttonText: AppLocalizations.of(context).login,
      buttonTextStyle: AppStyles.textStyle14(fontColor: AppColors.color.kWhite003,),
      buttonOnPressed: ()
      {
        provider.tabIndexLogin;
        AppRouter.router.pushNamed(AppRoutes.kAuthTabs, queryParameters: {'tab': '0'});
      },
    );
  }
}