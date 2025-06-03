import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../../../../core/widgets/app_buttons/app_button.dart';

class SignUpButton extends StatelessWidget
{
  const SignUpButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        CustomButton(
          buttonText: AppLocalizations.of(context).signUp,
          buttonOnPressed: ()
          {
            if (!formKey.currentState!.validate())
            {
              
            }
          },
        ),
        AppSizes.size20.verticalSpace,
        Text(AppLocalizations.of(context).orLoginWith, style: AppStyles.textStyle12(
            fontWeight: AppFontWeights.boldWeight,
            fontColor: AppColors.color.kBlack001,
          ),
        ),
      ],
    );
  }
}