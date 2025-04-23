import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/services/validation/email_valid.dart';
import 'package:test_app/core/services/validation/password_valid.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/services/validation/phone_number_valid.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_social_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../login/presentation/controllers/login_data_provider.dart';
import '../../../login/presentation/widgets/phone_number_dialog.dart';


class SignUpForm extends ConsumerWidget
{
  SignUpForm({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    final GlobalKey<FormState> signUpEmailFormKey = GlobalKey<FormState>();
    return Container(
      padding: AppPadding.kAppFormPadding,
      width: double.infinity,
      color: Theme.of(context).cardColor,
      child: SingleChildScrollView(
        child: Form(
          key: signUpEmailFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              AppSizes.size13.verticalSpace,
              Text(AppLocalizations.of(context).email, style: AppStyles.textStyle12(textColor: AppColors.color.kQuaternarySemiBlackText,),),
              AppSizes.size8.verticalSpace,
              CustomTextFormField(
                fieldKeyboardType: TextInputType.emailAddress,
                fieldValidator: (value) => emailValidation(value, context),
                fieldController: emailController,
                fieldhintStyle: AppStyles.textStyle12(fontWeight: AppFontWeights.regularWeight,),
                fieldText: AppLocalizations.of(context).enterEmaill,
              ),
              AppSizes.size13.verticalSpace,
              Text(AppLocalizations.of(context).phoneNumber,style: AppStyles.textStyle12(textColor: AppColors.color.kQuaternarySemiBlackText,),),
              AppSizes.size8.verticalSpace,
              CustomTextFormField(
                fieldKeyboardType: TextInputType.phone,
                fieldValidator: (value) => phoneNumberValidation(value, context),
                fieldController: phoneNumberController,
                fieldPrefixIcon: InkWell(
                  onTap: () => showCountriesPhoneNumberBottomSheet(context),
                  child: Image.asset(provider.countryFlag),
                ),
                fieldText: provider.phoneNumberHolder == 0 ? AppLocalizations.of(context).egyptCountryCode : AppLocalizations.of(context).saudiArabiaCountryCode,
              ),
              AppSizes.size24.verticalSpace,
              Text(AppLocalizations.of(context).password, style: AppStyles.textStyle12(textColor: AppColors.color.kQuaternarySemiBlackText,),),
              AppSizes.size8.verticalSpace,
              CustomTextFormField(
                fieldKeyboardType: TextInputType.text,
                fieldValidator: (value) => passwordValidation(value, context),
                fieldController: passwordController,
                fieldObscureText: provider.obscureText3,
                fieldText: AppLocalizations.of(context).password,
                fieldsuffixIcon: GestureDetector(
                  onTap: () => provider.obscureTextState3,
                  child: Image.asset(provider.obscureText3 ? AppAssets.iconsPNG.corssedEyePNG : AppAssets.iconsPNG.eyePNG,),
                ),
              ),
              AppSizes.size16.verticalSpace,
              CustomButton(
                buttonText: AppLocalizations.of(context).signUp,
                buttonOnPressed: () async
                {
                  print("\nobjectSTart1\n");
                  if (signUpEmailFormKey.currentState!.validate())
                  {
                    print("\nobjectSTart2\n");
                    final loginInput = (email: emailController.text.trim(), password: passwordController.text.trim(),);
                    final result = await ref.read(loginCheckProvider(loginInput).future);
                    if (result)
                    {
                      print("\nobjectRESUlt\n");
                      AppRouter.router.pushNamed(AppRoutes.kSplashView);
                    }
                    else
                    {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(AppLocalizations.of(context).welcomeBack)),);
                      print("\nobjectNothoing\n");
                    }
                  }
                },

              ),
              AppSizes.size20.verticalSpace,
              Align(
                alignment: Alignment.center,
                child: Text(
                  AppLocalizations.of(context).orSignUpWith,
                  style: AppStyles.textStyle12(
                    fontWeight: AppFontWeights.boldWeight,
                    textColor: AppColors.color.kSenaryTotalBlackText,
                  ),
                ),
              ),
              AppSizes.size20.verticalSpace,
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CustomSocialButton(
                          buttonText: AppLocalizations.of(context).facebook,
                          platformLogo: AppAssets.iconsPNG.faceBookPNG,
                          buttonBackgroundColor: AppColors.color.kPrimaryDark,
                          buttonTextStyle: AppStyles.textStyle12(
                            textColor: AppColors.color.kQuaternarySemiBlackText,
                          ),
                        ),
                      ),
                      AppSizes.size12.horizontalSpace,
                      Expanded(
                        child: CustomSocialButton(
                          buttonText: AppLocalizations.of(context).google,
                          platformLogo: AppAssets.iconsPNG.googlePNG,
                          buttonBackgroundColor: AppColors.color.kPrimaryDark,
                          buttonTextStyle: AppStyles.textStyle12(
                            textColor: AppColors.color.kQuaternarySemiBlackText,
                          ),
                        ),
                      ),
                    ],
                  ),
                  AppSizes.size12.verticalSpace,
                  CustomSocialButton(
                    buttonText: AppLocalizations.of(context).apple,
                    platformLogo: provider.themeMode == ThemeMode.light ? AppAssets.iconsPNG.applePNG : AppAssets.iconsPNG.appleDarkPNG,
                    buttonWidth: 174.w,
                    isLogoSpace: false,
                    buttonBackgroundColor: AppColors.color.kPrimaryDark,
                    buttonTextStyle: AppStyles.textStyle12(
                      textColor: AppColors.color.kQuaternarySemiBlackText,
                    ),
                  ),
                ],
              ),
              AppSizes.size20.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
