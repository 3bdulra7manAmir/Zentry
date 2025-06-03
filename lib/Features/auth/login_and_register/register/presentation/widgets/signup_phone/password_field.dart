import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../../../../core/helpers/app_providers.dart';
import '../../../../../../../core/services/validation/app_validation.dart';
import '../../../../../../../core/widgets/app_form/app_textform_field.dart';

class SignUpPasswordField extends ConsumerWidget
{
  SignUpPasswordField({super.key});

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(AppLocalizations.of(context).password, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002,),),
        AppSizes.size8.verticalSpace,
        CustomTextFormField(
          fieldKeyboardType: TextInputType.text,
          fieldValidator: (value) => AppValidation.passwordValidation(value, context),
          fieldController: passwordController,
          fieldObscureText: provider.isConfirmPasswordObscured,
          fieldText: AppLocalizations.of(context).password,
          fieldsuffixIcon: GestureDetector(
            onTap: () => provider.toggleConfirmPassword,
            child: provider.isConfirmPasswordObscured ? Icon(Icons.visibility_off_outlined, color: AppColors.color.kGreyText011, size: 20.w,) 
            : Icon(Icons.visibility_outlined, color: AppColors.color.kGreyText011, size: 20.w,)
          ),
        ),
      ],
    );
  }
}