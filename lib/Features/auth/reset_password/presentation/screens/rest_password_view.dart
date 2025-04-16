import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/services/validation/password_valid.dart';
import 'package:test_app/core/widgets/app_text_form_field.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/widgets/app_appbar.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../login_and_register/presentation/controllers/obsecure_text_provider.dart';


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
      appBar: CustomAppBar(barTitle: AppLocalizations.of(context).resetPassword,),
      body: Form(
        key: resetPasswordFormKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:
            [
              AppSizes.size35.verticalSpace,
              Image.asset(AppAssets.iconsPNG.securityLockPNG, alignment: Alignment.center,),
              AppSizes.size24.verticalSpace,
              Container(
                margin: AppPadding.kAppFormPadding,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Text(AppLocalizations.of(context).newPassword, style: AppStyles.textStyle13(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kSeptenarySemiGreyText),),
                    AppSizes.size9.verticalSpace,
                    CustomTextFormField(
                      fieldObscureText: provider.obscureText,
                      fieldKeyboardType: TextInputType.text,
                      fieldValidator: (value) => passwordValidation(value, context),
                      fieldController: passwordController,                  
                      fieldText: AppLocalizations.of(context).password,
                      fieldhintStyle: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight,
                      textColor: AppColors.color.kTertiarySemiGrey),
                      fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.corssedEyePNG),
                      ),
                    AppSizes.size24.verticalSpace,
                    Text(AppLocalizations.of(context).confirmPassword, style: AppStyles.textStyle13(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kSeptenarySemiGreyText),),
                    AppSizes.size9.verticalSpace,
                    CustomTextFormField(
                      fieldObscureText: provider.obscureText,
                      fieldValidator: (value) => passwordValidation(value, context),
                      fieldController: confirmPasswordController,
                      fieldKeyboardType: TextInputType.text,
                      fieldText: AppLocalizations.of(context).confirmPassword,
                      fieldhintStyle: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight,
                      textColor: AppColors.color.kTertiarySemiGrey),
                      fieldsuffixIcon: GestureDetector(
                        onTap: ()
                        {
                          ref.read(obscurePasswordProvider.notifier).state = !ref.read(obscurePasswordProvider.notifier).state;
                        },
                        child: Image.asset(provider.obscureText ? AppAssets.iconsPNG.corssedEyePNG : AppAssets.iconsPNG.eyePNG,),
                      ),
                    ),
                    AppSizes.size24.verticalSpace,
                    CustomButton(
                      buttonText: AppLocalizations.of(context).resetPassword,
                      buttonTextStyle: AppStyles.textStyle22(),
                      buttonOnPressed: ()
                      {
                        //AppRouter.router.pushNamed(AppRoutes.kVerificationCodeView);
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