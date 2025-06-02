import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../../../../core/services/validation/app_validation.dart';
import '../../../../../../../core/widgets/app_form/app_textform_field.dart';

class SignUpFullNameField extends StatelessWidget
{
  SignUpFullNameField({super.key});

  final TextEditingController fullNameController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(AppLocalizations.of(context).fullName, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002,),),
        AppSizes.size8.verticalSpace,
        CustomTextFormField(
          fieldKeyboardType: TextInputType.name,
          fieldValidator: (value) => AppValidation.fullNameValidation(value, context),
          fieldController: fullNameController,
          fieldhintStyle: AppStyles.textStyle12(fontWeight: AppFontWeights.regularWeight,),
          fieldText: AppLocalizations.of(context).fullName,
        ),
      ],
    );
  }
}