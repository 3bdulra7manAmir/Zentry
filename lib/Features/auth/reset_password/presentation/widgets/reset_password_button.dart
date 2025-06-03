import 'package:flutter/material.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_buttons/app_button.dart';

class ResetPasswordButton extends StatelessWidget
{
  const ResetPasswordButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      buttonText: AppLocalizations.of(context).resetPassword,
      buttonTextStyle: AppStyles.textStyle22(fontColor: AppColors.color.kWhite003),
      buttonOnPressed: ()
      {
        if (formKey.currentState!.validate())
        {
          AppRouter.router.pushNamed(AppRoutes.kAuthTabs);
        }
      },
    );
  }
}