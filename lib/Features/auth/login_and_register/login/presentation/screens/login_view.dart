import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants/app_paddings.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/helpers/app_providers.dart';
import '../../../../../../core/widgets/app_form/app_form.dart';
import '../widgets/login_form/email_field.dart';
import '../widgets/login_form/login_button.dart';
import '../widgets/login_form/password_field.dart';
import '../widgets/login_form/phone_field.dart';
import '../widgets/login_form/social_buttons.dart';

class LoginScreen extends ConsumerWidget
{
  LoginScreen({super.key,});
  final GlobalKey<FormState> loginEmailFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
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
              provider.isLoginMethodEmail ? const LoginEmail() : const LoginPhone(),
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