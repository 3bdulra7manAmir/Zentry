import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/widgets/app_form.dart';
import 'package:test_app/features/auth/login/presentation/widgets/login_form/login_form_phone.dart';

import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../controllers/switcher_controller.dart';
import '../widgets/login_form/login_email.dart';
import '../widgets/login_form/login_form_button.dart';
import '../widgets/login_form/login_form_password.dart';
import '../widgets/login_form/login_social.dart';

class LoginScreen extends ConsumerWidget
{
  LoginScreen({super.key, this.loginMethod});
  final GlobalKey<FormState> loginEmailFormKey = GlobalKey<FormState>();
  final bool? loginMethod;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final isPhoneNumber = ref.watch(loginMethodSwitcherProvider);
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
              isPhoneNumber ? const LoginPhone() : const LoginEmail(),
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