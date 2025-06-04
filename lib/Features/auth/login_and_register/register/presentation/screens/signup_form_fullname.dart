import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/widgets/app_form/app_form.dart';
import '../../../../widgets/app_auth_container.dart';
import '../widgets/signup_fullname/date_gender_field.dart';
import '../widgets/signup_fullname/fullname_field.dart';
import '../widgets/signup_fullname/signup_button.dart';
import '../widgets/signup_fullname/social_buttons.dart';


class SignUpFormFullName extends ConsumerWidget
{
  SignUpFormFullName({super.key});
  final GlobalKey<FormState> fullNameFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return AppAuthContainer(
      child: SingleChildScrollView(
        child: AppForm(
          formKey: fullNameFormKey,
          formBody: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              AppSizes.size13.verticalSpace,
              SignUpFullNameField(),
              AppSizes.size26.verticalSpace,
              const SignUpDateGenderField(),
              AppSizes.size24.verticalSpace,
              SignUpButton(formKey: fullNameFormKey,),
              AppSizes.size20.verticalSpace,
              const SignUpSocialButtons(),
              AppSizes.size20.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
