import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../config/router/app_router.dart';
import '../../../../../../config/router/app_routes.dart';
import '../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/helpers/app_providers.dart';
import '../../../../../../core/widgets/app_buttons/app_button.dart';

class RegisterButton extends ConsumerWidget
{
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return CustomButton(
      buttonText: AppLocalizations.of(context).signUp,
      buttonTextStyle: AppStyles.textStyle14(fontColor: AppColors.color.kBlue007,),
      buttonBackgroundColor: AppColors.color.kWhite004,
      buttonBorderColor: AppColors.color.kBlue008,
      buttonOnPressed: ()
      {
        provider.switchToRegisterTab;
        AppRouter.router.pushNamed(AppRoutes.kAuthTabs, queryParameters: {'tab': '1'});
      },
    );
  }
}