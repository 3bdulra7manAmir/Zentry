import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/widgets/app_form/app_form.dart';
import '../../../../widgets/app_auth_container.dart';
import '../widgets/signup_email/email_field.dart';
import '../widgets/signup_email/invitation_code.dart';
import '../widgets/signup_email/password_field.dart';
import '../widgets/signup_email/signup_button.dart';


class SignUpFormEmail extends ConsumerWidget
{
  SignUpFormEmail({super.key});
  final GlobalKey<FormState> signUpEmailFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return AppAuthContainer(
      child: SingleChildScrollView(
        child: AppForm(
          formKey: signUpEmailFormKey,
          formBody: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              AppSizes.size13.verticalSpace,
              SignUpEmailField(),
              AppSizes.size24.verticalSpace,
              SignUpPasswordField(),
              AppSizes.size24.verticalSpace,
              const SignUpInvitationCodeField(),
              AppSizes.size32.verticalSpace,
              SignupButton(formKey: signUpEmailFormKey,),
            ],
          ),
        ),
      ),
    );
  }
}
