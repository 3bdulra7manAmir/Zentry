import 'package:flutter/material.dart';

import '../../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../../core/widgets/app_buttons/app_button.dart';

class SignupButton extends StatelessWidget
{
  const SignupButton({super.key, required this.formKey });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      buttonText: AppLocalizations.of(context).signUp,
      buttonOnPressed: () async
      {
        if (!formKey.currentState!.validate())
        {
          
        }
      },
    );
  }
}