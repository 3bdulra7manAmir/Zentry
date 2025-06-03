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

class NewPasswordField extends ConsumerWidget
{
  NewPasswordField({super.key});
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(AppLocalizations.of(context).newPassword, style: AppStyles.textStyle13(
            fontWeight: AppFontWeights.mediumWeight,
            fontColor: AppColors.color.kGreyText005,
          ),
        ),
        AppSizes.size9.verticalSpace,
        CustomTextFormField(
          fieldObscureText: provider.obscureText,
          fieldKeyboardType: TextInputType.text,
          fieldValidator: (value) => AppValidation.passwordValidation(value, context),
          fieldController: passwordController,
          fieldText: AppLocalizations.of(context).password,
          fieldhintStyle: AppStyles.textStyle14(
            fontWeight: AppFontWeights.mediumWeight,
            fontColor: AppColors.color.kGreyText004,
          ),
          fieldsuffixIcon: GestureDetector(
            onTap: ()
            {
              ref.read(obscurePasswordProvider.notifier).state = !ref.read(obscurePasswordProvider.notifier).state;
            },
            child: provider.obscureText ? Icon(Icons.visibility_off_outlined, color: AppColors.color.kGreyText011, size: 20.w,) 
            : Icon(Icons.visibility_outlined, color: AppColors.color.kGreyText011, size: 20.w,) 
          ),
        ),
      ],
    );
  }
}