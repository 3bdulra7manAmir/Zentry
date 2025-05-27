import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/services/validation/app_validation.dart';
import '../../../../../../core/widgets/app_text_form_field.dart';
import '../../controllers/email_phone_switcher.dart';

class LoginEmail extends ConsumerWidget
{
  const LoginEmail({super.key});

  static TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Column(
      children:
      [
        Row(
          children:
          [
            Text(AppLocalizations.of(context).email, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002,),),
            const Spacer(),
            Text(AppLocalizations.of(context).or, style: AppStyles.textStyle12(fontColor: AppColors.color.kGreyText002,),),
            AppSizes.size4.horizontalSpace,
            GestureDetector(
              onTap: () => ref.read(loginTypeProvider.notifier).toggleLoginType(),
              child: Text(AppLocalizations.of(context).phone, style: AppStyles.textStyle12(
                  fontWeight: AppFontWeights.boldWeight,
                  textDecoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        AppSizes.size8.verticalSpace,
        CustomTextFormField(
          fieldKeyboardType: TextInputType.emailAddress,
          fieldValidator: (value) => AppValidation.emailValidation(value, context),
          fieldController: emailController,
          fieldhintStyle: AppStyles.textStyle12(fontWeight: AppFontWeights.regularWeight,),
          fieldText: AppLocalizations.of(context).enterEmaill,
        ),
      ],
    );
  }
}