import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/widgets/app_form/app_form.dart';
import '../../../../widgets/app_auth_container.dart';
import '../widgets/signup_phone/invitation_field.dart';
import '../widgets/signup_phone/password_field.dart';
import '../widgets/signup_phone/phone_field.dart';
import '../widgets/signup_phone/signup_button.dart';


class SignUpFormPhoneNumber extends ConsumerWidget
{
  SignUpFormPhoneNumber({super.key});
  final GlobalKey<FormState> signUpPhoneNumberFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  { 
    return AppAuthContainer(
      child: SingleChildScrollView(
        child: AppForm(
          formKey: signUpPhoneNumberFormKey,
          formBody: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              AppSizes.size13.verticalSpace,
              SignUpPhoneField(),
              AppSizes.size26.verticalSpace,
              SignUpPasswordField(),
              AppSizes.size24.verticalSpace,
              SignUpInvitationField(),
              AppSizes.size32.verticalSpace,
              SignupButton(formKey: signUpPhoneNumberFormKey),
            ],
          ),
        ),
      ),
    );
  }
}
