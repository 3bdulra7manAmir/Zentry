import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/app_form/app_textform_field.dart';
import '../../../login_and_register/login/presentation/controllers/obsecure_text_controller.dart';

class ConfirmPasswordField extends ConsumerWidget
{
  ConfirmPasswordField({super.key});
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(AppLocalizations.of(context).confirmPassword, style: AppStyles.textStyle13(
            fontWeight: AppFontWeights.mediumWeight,
            fontColor: AppColors.color.kGreyText005,
          ),
        ),
        AppSizes.size9.verticalSpace,
        CustomTextFormField(
          fieldReadOnly: !provider.isRegisterPasswordObscured,
          fieldObscureText: provider.isRegisterPasswordObscured,
          fieldValidator: (value) => AppValidation.passwordValidation(value, context),
          fieldController: confirmPasswordController,
          fieldKeyboardType: TextInputType.text,
          fieldText: AppLocalizations.of(context).confirmPassword,
          fieldhintStyle: AppStyles.textStyle14(
            fontWeight: AppFontWeights.mediumWeight,
            fontColor: AppColors.color.kGreyText004,
          ),
          fieldsuffixIcon: GestureDetector(
            onTap: ()
            {
              ref.read(obscurePasswordProvider2.notifier).state = !ref.read(obscurePasswordProvider2.notifier).state;
            },
            child: provider.isRegisterPasswordObscured ? Icon(Icons.visibility_off_outlined, color: AppColors.color.kGreyText011, size: 20.w,) 
            : Icon(Icons.visibility_outlined, color: AppColors.color.kGreyText011, size: 20.w,) 
          ),
        ),
      ],
    );
  }
}