import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../../../core/constants/app_paddings.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../../../../core/helpers/app_providers.dart';
import '../../../../../../../core/services/validation/app_validation.dart';
import '../../../../../../../core/widgets/app_form/app_textform_field.dart';

class SignUpInvitationCodeField extends ConsumerWidget
{
  const SignUpInvitationCodeField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(AppLocalizations.of(context).invitationCode, 
        style: AppStyles.textStyle13(
          fontWeight: AppFontWeights.mediumWeight, 
          fontColor: AppColors.color.kBlue003,),),
      AppSizes.size8.verticalSpace,
      CustomTextFormField(
        fieldKeyboardType: TextInputType.text,
        fieldValidator: (value) => AppValidation.invitationCodeValidation(value, context),
        fieldObscureText: provider.obscureText,
        fieldText: AppLocalizations.of(context).invitationCodeExample,
        fieldsuffixIcon: Padding(
          padding: AppPadding.endOnly15,
          child: SizedBox(
            width: 60.w,
            child: Align(
              alignment: provider.localeController.selectedLanguageIndex == 0 ? Alignment.centerLeft : Alignment.centerRight,
              child: Text(AppLocalizations.of(context).paste, style: AppStyles.textStyle12(),),
            ),
          ),
        ),
      ),
      ],
    );
  }
}