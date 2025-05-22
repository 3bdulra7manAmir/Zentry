import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_form.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../login/presentation/controllers/email_phone_switcher.dart';


class SignUpFormEmail extends ConsumerWidget
{
  SignUpFormEmail({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    final GlobalKey<FormState> signUpEmailFormKey = GlobalKey<FormState>();
    return Container(
      padding: AppPadding.horizontal16,
      width: double.infinity,
      color: Theme.of(context).cardColor,
      child: SingleChildScrollView(
        child: AppForm(
          formKey: signUpEmailFormKey,
          formBody: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              AppSizes.size13.verticalSpace,
              Row(
                children:
                [
                  Text(AppLocalizations.of(context).emailAddress, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002,),),
                  const Spacer(),
                  AppSizes.size4.horizontalSpace,
                  GestureDetector(
                    onTap: () => ref.read(loginTypeProvider.notifier).toggleLoginType(),
                    child: Text(AppLocalizations.of(context).phoneNumber, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight,),),
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
              AppSizes.size24.verticalSpace,
              Text(AppLocalizations.of(context).password, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002,),),
              AppSizes.size8.verticalSpace,
              CustomTextFormField(
                fieldKeyboardType: TextInputType.text,
                fieldValidator: (value) => AppValidation.passwordValidation(value, context),
                fieldController: passwordController,
                fieldObscureText: provider.obscureText,
                fieldText: "**************",
                fieldsuffixIcon: GestureDetector(
                  onTap: () => provider.obscureTextState,
                  child: Image.asset(provider.obscureText
                    ? AppAssets.iconsPNG.loginPasswordHidden
                    : AppAssets.iconsPNG.loginPasswordVisible,
                  ),
                ),
              ),
              AppSizes.size24.verticalSpace,
              Text(AppLocalizations.of(context).invitationCode, style: AppStyles.textStyle13(
                fontWeight: AppFontWeights.mediumWeight,
                fontColor: AppColors.color.kBlue003,
                ),
              ),
              AppSizes.size8.verticalSpace,
              CustomTextFormField(
                fieldKeyboardType: TextInputType.text,
                fieldValidator: (value) => AppValidation.passwordValidation(value, context),
                fieldController: passwordController,
                fieldObscureText: provider.obscureText,
                fieldText: AppLocalizations.of(context).invitationCodeExample,
                fieldsuffixIcon: Padding(
                  padding: AppPadding.endOnly15,
                  child: SizedBox(
                    width: 60.w,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(AppLocalizations.of(context).paste, style: AppStyles.textStyle12(),),
                    ),
                  ),
                ),
              ),
              AppSizes.size32.verticalSpace,
              CustomButton(
                buttonText: AppLocalizations.of(context).signUp,
                buttonOnPressed: () async
                {
                  if (signUpEmailFormKey.currentState!.validate())
                  {

                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
