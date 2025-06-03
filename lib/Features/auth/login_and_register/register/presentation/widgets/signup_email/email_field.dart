import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../../../../core/helpers/app_providers.dart';
import '../../../../../../../core/services/validation/app_validation.dart';
import '../../../../../../../core/widgets/app_form/app_textform_field.dart';

class SignUpEmailField extends ConsumerWidget
{
  SignUpEmailField({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Row(
          children:
          [
            Text(AppLocalizations.of(context).emailAddress, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002,),),
            const Spacer(),
            AppSizes.size4.horizontalSpace,
            Row(
              children:
              [
                GestureDetector(
                  onTap: () => provider.signUpPhoneSwitcher,
                  child: Text(AppLocalizations.of(context).phoneNumber, style: AppStyles.textStyle12(
                    fontWeight: AppFontWeights.boldWeight,
                    textDecoration: TextDecoration.underline,),
                  ),
                ),
                AppSizes.size3.horizontalSpace,
                Text(AppLocalizations.of(context).or, style: AppStyles.textStyle12(fontColor: AppColors.color.kGreyText002,),),
                AppSizes.size3.horizontalSpace,
                GestureDetector(
                  onTap: () => provider.signUpFullNameSwitcher,
                  child: Text(AppLocalizations.of(context).fullName, style: AppStyles.textStyle12(
                    fontWeight: AppFontWeights.boldWeight,
                    textDecoration: TextDecoration.underline,),
                  ),
                ),
              ],
            ),
          ],
        ),
        AppSizes.size8.verticalSpace,
        CustomTextFormField(
          fieldKeyboardType: TextInputType.emailAddress,
          fieldValidator: (value) => AppValidation.emailValidation(value, context),
          fieldController: emailController,
          fieldhintStyle: AppStyles.textStyle12(fontWeight: AppFontWeights.regularWeight,),
          fieldText: AppLocalizations.of(context).emailAddress,
        ),
      ],
    );
  }
}