import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_appbars/app_appbar.dart';
import '../../../../../core/widgets/app_form/app_form.dart';
import '../widgets/confirm_password_field.dart';
import '../widgets/new_password_field.dart';
import '../widgets/reset_password_button.dart';
import '../widgets/reset_password_image.dart';

class RestPasswordScreen extends ConsumerWidget
{
  RestPasswordScreen({super.key});
  final GlobalKey<FormState> resetPasswordFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: Text(AppLocalizations.of(context).resetPassword, style: AppStyles.textStyle14(
          fontWeight: AppFontWeights.semiBoldWeight,
          fontColor: AppColors.color.kBlack001,
        ),),
      ),
      body: AppForm(
        formKey: resetPasswordFormKey,
        formBody: SingleChildScrollView(
          child: Column(
            children:
            [
              AppSizes.size35.verticalSpace,
              const ResetPasswordImage(),
              AppSizes.size24.verticalSpace,
              Padding(
                padding: AppMargins.horizontal16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    NewPasswordField(),
                    AppSizes.size24.verticalSpace,
                    ConfirmPasswordField(),
                    AppSizes.size24.verticalSpace,
                    ResetPasswordButton(formKey: resetPasswordFormKey,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
