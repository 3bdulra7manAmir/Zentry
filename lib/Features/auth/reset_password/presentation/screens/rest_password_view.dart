import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/app_appbar.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../login/presentation/controllers/obsecure_text_controller.dart';

class RestPasswordView extends ConsumerWidget
{
  RestPasswordView({super.key});

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    final GlobalKey<FormState> resetPasswordFormKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: Text(AppLocalizations.of(context).resetPassword, style: AppStyles.textStyle14(
          fontWeight: AppFontWeights.semiBoldWeight,
          fontColor: AppColors.color.kBlack001,
        ),),
      ),
      body: Form(
        key: resetPasswordFormKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:
            [
              AppSizes.size35.verticalSpace,
              Image.asset(AppAssets.iconsPNG.resetPasswordLock, alignment: Alignment.center,),
              AppSizes.size24.verticalSpace,
              Container(
                margin: AppMargins.horizontal16,
                width: double.infinity,
                child: Column(
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
                        child: Image.asset(provider.obscureText
                          ? AppAssets.iconsPNG.loginPasswordHidden
                          : AppAssets.iconsPNG.loginPasswordVisible,
                        ),
                      ),
                    ),
                    AppSizes.size24.verticalSpace,
                    Text(AppLocalizations.of(context).confirmPassword, style: AppStyles.textStyle13(
                        fontWeight: AppFontWeights.mediumWeight,
                        fontColor: AppColors.color.kGreyText005,
                      ),
                    ),
                    AppSizes.size9.verticalSpace,
                    CustomTextFormField(
                      fieldObscureText: provider.obscureText2,
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
                        child: Image.asset(provider.obscureText2 ? AppAssets.iconsPNG.loginPasswordHidden : AppAssets.iconsPNG.loginPasswordVisible,),
                      ),
                    ),
                    AppSizes.size24.verticalSpace,
                    CustomButton(
                      buttonText: AppLocalizations.of(context).resetPassword,
                      buttonTextStyle: AppStyles.textStyle22(),
                      buttonOnPressed: ()
                      {
                        if (resetPasswordFormKey.currentState!.validate())
                        {
                          //AppRouter.router.pushNamed(AppRoutes.kVerificationCodeView);
                        }
                      },
                    ),
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
