import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/services/validation/app_validation.dart';
import '../../../../../../core/widgets/app_form/app_textform_field.dart';

class ForgetPasswordEmail extends StatelessWidget
{
  ForgetPasswordEmail({super.key});
  
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(AppLocalizations.of(context).emailAddress, 
        style: AppStyles.textStyle12(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kBlack002,),),
        AppSizes.size8.verticalSpace,
        CustomTextFormField(
          fieldValidator: (value) => AppValidation.emailValidation(value, context),
          fieldController: emailController,
          fieldKeyboardType: TextInputType.emailAddress,
          fieldText: AppLocalizations.of(context).emailAddress,
        ),
      ],
    );
  }
}