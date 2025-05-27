import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/widgets/app_form.dart';

import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../widgets/login_form_email/login_email.dart';
import '../widgets/login_form_email/login_form_button.dart';
import '../widgets/login_form_email/login_form_password.dart';
import '../widgets/login_form_email/login_social.dart';

class LoginScreen extends StatelessWidget
{
  LoginScreen({super.key});
  final GlobalKey<FormState> loginEmailFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.horizontal16,
      width: double.infinity,
      color: Theme.of(context).cardColor,
      child: SingleChildScrollView(
        child: AppForm(
          formKey: loginEmailFormKey,
          formBody: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              AppSizes.size13.verticalSpace,
              const LoginEmail(),
              AppSizes.size24.verticalSpace,
              const LoginPassword(),
              AppSizes.size16.verticalSpace,
              LoginFormButton(formKey: loginEmailFormKey,),
              AppSizes.size20.verticalSpace,
              const LoginSocial(),
              AppSizes.size20.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}