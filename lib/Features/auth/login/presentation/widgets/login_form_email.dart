import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_form.dart';
import '../../../../../core/widgets/app_social_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../controllers/checkbox_controller.dart';
import '../controllers/email_phone_switcher.dart';
import '../controllers/login_email_validation_controller.dart';

class LoginFormWithEmail extends ConsumerWidget {
  LoginFormWithEmail({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  static GlobalKey<FormState> loginEmailFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return Container(
      padding: AppPadding.kAppFormPadding,
      width: double.infinity,
      color: Theme.of(context).cardColor,
      child: SingleChildScrollView(
        child: AppForm(
          formKey: loginEmailFormKey,
          formBody: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              AppSizes.size13.verticalSpace,
              Row(
                children:
                [
                  Text(AppLocalizations.of(context).email, style: AppStyles.textStyle12(fontColor: AppColors.color.kQuaternarySemiBlackText,),),
                  const Spacer(),
                  Text(AppLocalizations.of(context).or, style: AppStyles.textStyle12(fontColor: AppColors.color.kSecondarySemiGreyText,),),
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
                fieldhintStyle: AppStyles.textStyle12(
                  fontWeight: AppFontWeights.regularWeight,
                ),
                fieldText: AppLocalizations.of(context).enterEmaill,
              ),
              AppSizes.size24.verticalSpace,
              Text(AppLocalizations.of(context).password, style: AppStyles.textStyle12(fontColor: AppColors.color.kQuaternarySemiBlackText,),),
              AppSizes.size8.verticalSpace,
              CustomTextFormField(
                fieldKeyboardType: TextInputType.text,
                fieldValidator: (value) => AppValidation.passwordValidation(value, context),
                fieldController: passwordController,
                fieldObscureText: provider.obscureText,
                fieldText: AppLocalizations.of(context).password,
                fieldsuffixIcon: GestureDetector(
                  onTap: () => provider.obscureTextState,
                  child: Image.asset(provider.obscureText ? AppAssets.iconsPNG.corssedEyePNG : AppAssets.iconsPNG.eyePNG,),
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
                    side: BorderSide(width: AppBorderWidths.width2, color: AppColors.color.kFormButtonsBorders,),
                  ),
                  Text(AppLocalizations.of(context).remember, style: AppStyles.textStyle12(fontColor: AppColors.color.kTertiarySemiGrey,),),
                  const Spacer(),
                  InkWell(
                    onTap: () => AppRouter.router.pushNamed(AppRoutes.kForgetPasswordEmailView,),
                    child: Text(AppLocalizations.of(context).forgetPassword, style: AppStyles.textStyle12(
                        fontColor: AppColors.color.kQuinarySemiBlueText,
                        textDecoration: TextDecoration.underline,
                        textDecorationColor: AppColors.color.kForgetPasswordUnderLine,
                      ),
                    ),
                  ),
                ],
              ),
              AppSizes.size16.verticalSpace,
              CustomButton(
                buttonText: AppLocalizations.of(context).login,
                buttonOnPressed: () async {
                  print('Starting login process...');
                  try {
                    if (loginEmailFormKey.currentState!.validate()) {
                      final loginInput = (
                        email: emailController.text.trim(),
                        password: passwordController.text.trim()
                      );
                      print('Login credentials: ${loginInput.email}');
                      final loginState = ref.read(loginEmailValidationProvider(loginInput));
                      
                      await loginState.when(
                        data: (result) async {
                          print('Login validation result: $result');
                          if (result) {
                            AppRouter.router.pushNamed(AppRoutes.kSplashView);
                            return;
                          } 
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Invalid email or password'))
                            );
                          }
                        },
                        error: (error, stack) {
                          print('Login error: $error');
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Error during login: ${error.toString()}'))
                            );
                          }
                        },
                        loading: () {
                          print('Login validation in progress...');
                        }
                      );
                    }
                  } catch (e) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("AppLocalizations.of(context).errorOccurred"))
                      );
                    }
                  }
                },
              ),
              AppSizes.size20.verticalSpace,
              Align(
                alignment: Alignment.center,
                child: Text(
                  AppLocalizations.of(context).orLoginWith,
                  style: AppStyles.textStyle12(
                    fontWeight: AppFontWeights.boldWeight,
                    fontColor: AppColors.color.kSenaryTotalBlackText,
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
                          platformLogo: AppAssets.iconsPNG.faceBookPNG,
                          buttonBackgroundColor: AppColors.color.kPrimaryDark,
                          buttonTextStyle: AppStyles.textStyle12(
                            fontColor: AppColors.color.kQuaternarySemiBlackText,
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
                            fontColor: AppColors.color.kQuaternarySemiBlackText,
                          ),
                        ),
                      ),
                    ],
                  ),
                  AppSizes.size12.verticalSpace,
                  CustomSocialButton(
                    buttonText: AppLocalizations.of(context).apple,
                    platformLogo:
                        provider.themeMode == ThemeMode.light
                            ? AppAssets.iconsPNG.applePNG
                            : AppAssets.iconsPNG.appleDarkPNG,
                    buttonWidth: 174.w,
                    isLogoSpace: false,
                    buttonBackgroundColor: AppColors.color.kPrimaryDark,
                    buttonTextStyle: AppStyles.textStyle12(
                      fontColor: AppColors.color.kQuaternarySemiBlackText,
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
