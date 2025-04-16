import 'package:flutter/material.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';

class SignUpForm extends StatelessWidget
{
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Center(child: Text(AppLocalizations.of(context).signUpPage));
  }
}