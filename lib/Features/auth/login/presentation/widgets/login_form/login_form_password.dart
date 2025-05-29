import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../config/router/app_router.dart';
import '../../../../../../config/router/app_routes.dart';
import '../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/helpers/app_providers.dart';
import '../../../../../../core/services/validation/app_validation.dart';
import '../../../../../../core/widgets/app_text_form_field.dart';
import '../../controllers/checkbox_controller.dart';

class LoginPassword extends ConsumerWidget
{
  const LoginPassword({super.key});

  static TextEditingController passwordController = TextEditingController();

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
          fieldKeyboardType: TextInputType.visiblePassword,
          fieldValidator: (value) => AppValidation.passwordValidation(value, context),
          fieldController: passwordController,
          fieldObscureText: provider.obscureText,
          fieldText: AppLocalizations.of(context).password,
          fieldsuffixIcon: GestureDetector(
            onTap: () => provider.obscureTextState,
            child: provider.obscureText ? Icon(Icons.visibility_off_outlined, color: AppColors.color.kGreyText011, size: 20.w,) 
            : Icon(Icons.visibility_outlined, color: AppColors.color.kGreyText011, size: 20.w,) 
          ),
        ),
        AppSizes.size16.verticalSpace,
        Row(
          children:
          [
            Checkbox(
              activeColor: AppColors.color.kBlue003,
              value: provider.isChecked,
              onChanged: (value)
              {
                if (value != null)
                {
                  ref.read(checkboxValueProvider.notifier).state = value;
                }
              },
              side: BorderSide(width: AppBorderWidths.medium, color: AppColors.color.kGrey001,),
            ),
            Text(AppLocalizations.of(context).remember, style: AppStyles.textStyle12(
                fontColor: AppColors.color.kBlue004,
                textDecoration: TextDecoration.underline,
                textDecorationColor: AppColors.color.kBlue004,
              ),
              ),
            const Spacer(),
            InkWell(
              onTap: () => AppRouter.router.pushNamed(AppRoutes.kForgetPassword,),
              child: Text(AppLocalizations.of(context).forgetPassword, style: AppStyles.textStyle12(
                  fontColor: AppColors.color.kBlue003,
                  textDecoration: TextDecoration.underline,
                  textDecorationColor: AppColors.color.kBlue004,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}