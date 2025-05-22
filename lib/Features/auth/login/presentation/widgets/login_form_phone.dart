import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_form.dart';
import '../../../../../core/widgets/app_social_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../controllers/checkbox_controller.dart';
import '../controllers/email_phone_switcher.dart';
import 'phone_number_bottom_model_sheet.dart';

class LoginFormWithPhone extends ConsumerWidget
{
  LoginFormWithPhone({super.key});

  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    final GlobalKey<FormState> loginPhoneFormKey = GlobalKey<FormState>();
    return Container(
      padding: AppPadding.kAppFormPadding,
      width: double.infinity,
      color: Theme.of(context).cardColor,
      child: SingleChildScrollView(
        child: AppForm(
          formKey: loginPhoneFormKey,
          formBody: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              AppSizes.size28.verticalSpace,
              Row(
                children:
                [
                  Text(AppLocalizations.of(context).phoneNumber, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002,),),
                  const Spacer(),
                  Text(AppLocalizations.of(context).or, style: AppStyles.textStyle12(fontColor: AppColors.color.kGreyText002,),),
                  AppSizes.size4.horizontalSpace,
                  GestureDetector(
                    onTap: () => ref.read(loginTypeProvider.notifier).toggleLoginType(),
                    child: Text(AppLocalizations.of(context).email, style: AppStyles.textStyle12(
                        fontWeight: AppFontWeights.boldWeight,
                        textDecoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              AppSizes.size8.verticalSpace,
              CustomTextFormField(
                fieldKeyboardType: TextInputType.phone,
                fieldValidator: (value) => AppValidation.phoneNumberValidation(value, context),
                fieldController: phoneNumberController,
                fieldPrefixIcon: InkWell(
                  onTap: () => showCountriesPhoneNumberBottomSheet(context),
                  child: Image.asset(provider.countryFlag),
                ),
                fieldText: provider.phoneNumberHolder == 0
                  ? AppLocalizations.of(context).egyptCountryCode
                  : AppLocalizations.of(context).saudiArabiaCountryCode,
              ),
              AppSizes.size24.verticalSpace,
              Text(AppLocalizations.of(context).password, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002,),),
              AppSizes.size8.verticalSpace,
              CustomTextFormField(
                fieldValidator: (value) => AppValidation.passwordValidation(value, context),
                fieldController: passwordController,
                fieldObscureText: provider.obscureText,
                fieldKeyboardType: TextInputType.text,
                fieldText: AppLocalizations.of(context).password,
                fieldsuffixIcon: GestureDetector(
                  onTap: () => provider.obscureTextState,
                  child: Image.asset(provider.obscureText
                    ? AppAssets.iconsPNG.loginPasswordHidden
                    : AppAssets.iconsPNG.loginPasswordVisible,
                  ),
                ),
              ),
              AppSizes.size16.verticalSpace,
              Row(
                children:
                [
                  Checkbox(
                    value: provider.isChecked,
                    onChanged: (value)
                    {
                      if (value != null)
                      {
                        ref.read(checkboxValueProvider.notifier).state = value;
                      }
                    },
                    side: BorderSide(width: AppBorderWidths.width2, color: AppColors.color.kGrey001,),
                  ),
                  Text(AppLocalizations.of(context).remember, style: AppStyles.textStyle12(fontColor: AppColors.color.kGreyText004,),),
                  const Spacer(),
                  InkWell(
                    onTap: () => AppRouter.router.pushNamed(AppRoutes.kForgetPasswordPhoneView,),
                    child: Text(AppLocalizations.of(context).forgetPassword, style: AppStyles.textStyle12(
                        fontColor: AppColors.color.kBlue003,
                        textDecoration: TextDecoration.underline,
                        textDecorationColor: AppColors.color.kBlue004,
                      ),
                    ),
                  ),
                ],
              ),
              AppSizes.size16.verticalSpace,
              CustomButton(
                buttonText: AppLocalizations.of(context).login,
                buttonOnPressed: ()
                {
                  if (loginPhoneFormKey.currentState!.validate()) //HERE
                  {
                    //AppRouter.router.
                  }
                },
              ),
              AppSizes.size20.verticalSpace,
              Align(
                alignment: Alignment.center,
                child: Text(AppLocalizations.of(context).orLoginWith, style: AppStyles.textStyle12(
                    fontWeight: AppFontWeights.boldWeight,
                    fontColor: AppColors.color.kBlack001,
                  ),
                ),
              ),
              AppSizes.size20.verticalSpace,
              Column(
                children:
                [
                  Row(
                    children:
                    [
                      Expanded(
                        child: CustomSocialButton(
                          buttonText: AppLocalizations.of(context).facebook,
                          platformLogo: AppAssets.iconsPNG.loginFacebook,
                          buttonBackgroundColor: AppColors.color.kDark002,
                          buttonTextStyle: AppStyles.textStyle12(
                            fontColor: AppColors.color.kBlack002,
                          ),
                        ),
                      ),
                      AppSizes.size12.horizontalSpace,
                      Expanded(
                        child: CustomSocialButton(
                          buttonText: AppLocalizations.of(context).google,
                          platformLogo: AppAssets.iconsPNG.loginGoogle,
                          buttonBackgroundColor: AppColors.color.kDark002,
                          buttonTextStyle: AppStyles.textStyle12(
                            fontColor: AppColors.color.kBlack002,
                          ),
                        ),
                      ),
                    ],
                  ),
                  AppSizes.size12.verticalSpace,
                  CustomSocialButton(
                    buttonText: AppLocalizations.of(context).apple, platformLogo:
                    provider.themeMode == ThemeMode.light
                            ? AppAssets.iconsPNG.loginApple
                            : AppAssets.iconsPNG.loginAppleDark,
                    buttonWidth: 174.w,
                    isLogoSpace: false,
                    buttonBackgroundColor: AppColors.color.kDark002,
                    buttonTextStyle: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002,),
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
