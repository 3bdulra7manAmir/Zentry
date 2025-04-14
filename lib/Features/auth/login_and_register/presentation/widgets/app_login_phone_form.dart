import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/features/auth/login_and_register/presentation/widgets/phone_number_dialog.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/color_system/controller/theme_controller.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/services/validation/password_valid.dart';
import '../../../../../core/services/validation/phone_number_valid.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_social_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../app_form/presentation/controllers/countries_icon_update_provider.dart';
import '../controllers/checkboc_provider.dart';
import '../controllers/email_or_phone_provider.dart';
import '../controllers/obsecure_text_provider.dart';


class LoginFormWithPhone extends ConsumerWidget
{
  LoginFormWithPhone({super.key});

  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // @override
  // void dispose()
  // {
  //   phoneNumbrerController.dispose();
  //   passwordController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final themeMode = ref.watch(themeControllerProvider);
    final platformLogo = themeMode == ThemeMode.light ? AppAssets.iconsPNG.applePNG : AppAssets.iconsPNG.appleDarkPNG;
    final isChecked = ref.watch(checkboxValueProvider);
    final obscureText = ref.watch(obscurePasswordProvider);

    final selectedCountryFlagPath = getSelectedCountryImage(ref, context);
    final phoneNumberHolder = ref.watch(countryControllerProvider);
    final GlobalKey<FormState> loginPhoneFormKey = GlobalKey<FormState>();

    return Container(
      padding: AppPadding.kAppFormPadding,
      width: double.infinity,
      color: Theme.of(context).cardColor,
      child: SingleChildScrollView(
        child: Form(
          key: loginPhoneFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              AppSizes.size28.verticalSpace,
              
              Row(
                children:
                [
                  Text(AppLocalizations.of(context).phoneNumber, style: AppStyles.textStyle12(textColor: AppColors.color.kQuaternarySemiBlackText,),),
                  
                  const Spacer(),
          
                  Text(AppLocalizations.of(context).or, style: AppStyles.textStyle12(textColor: AppColors.color.kSecondarySemiGreyText,),),
                  
                  AppSizes.size4.horizontalSpace,
          
                  GestureDetector(
                    onTap: () => ref.read(loginTypeProvider.notifier).toggleLoginType(),
                    child: Text(
                      AppLocalizations.of(context).email,
                      style: AppStyles.textStyle12(
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
                fieldValidator: (value) => phoneNumberValidation(value, context),
                fieldController: phoneNumberController,
                fieldPrefixIcon: InkWell( //HERE
                  onTap: () => showCountriesPhoneNumberBottomSheet(context),
                  child: Image.asset(selectedCountryFlagPath)),
                fieldText: phoneNumberHolder == 0 ? AppLocalizations.of(context).egyptCountryCode : AppLocalizations.of(context).saudiArabiaCountryCode,
              ),
                
              AppSizes.size24.verticalSpace,
                
              Text(AppLocalizations.of(context).password, style: AppStyles.textStyle12(textColor: AppColors.color.kQuaternarySemiBlackText,),),
                
              AppSizes.size8.verticalSpace,
                
              CustomTextFormField(
                fieldValidator: (value) => passwordValidation(value, context),
                fieldController: passwordController,
                fieldObscureText: obscureText,
                fieldKeyboardType: TextInputType.text,
                fieldText: AppLocalizations.of(context).password,
                
                fieldsuffixIcon: GestureDetector(
                  onTap: ()
                  {
                    ref.read(obscurePasswordProvider.notifier).state = !ref.read(obscurePasswordProvider.notifier).state;
                  },
                  child: Image.asset(obscureText ? AppAssets.iconsPNG.corssedEyePNG: AppAssets.iconsPNG.eyePNG,),
                ),

              ),
                
              AppSizes.size16.verticalSpace,
                
              Row(
                children:
                [
                  Checkbox(value: isChecked, onChanged: (value)
                {
                  if (value != null)
                  {
                    ref.read(checkboxValueProvider.notifier).state = value;
                  }
                },
                side: BorderSide(width: AppBorderWidths.width2, color: AppColors.color.kFormButtonsBorders,),
                ),
          
                  Text(AppLocalizations.of(context).remember, style: AppStyles.textStyle12(textColor: AppColors.color.kTertiarySemiGrey),),
          
                  const Spacer(),
          
                  InkWell(
                    onTap: () => AppRouter.router.pushNamed(AppRoutes.kForgetPasswordPhoneView),
                    child: Text(AppLocalizations.of(context).forgetPassword, style: AppStyles.textStyle12(
                      textColor: AppColors.color.kQuinarySemiBlueText,
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
                buttonOnPressed: ()
                {
                  if (loginPhoneFormKey.currentState!.validate())
                  {
                    //AppRouter.router.
                  }
                },
              ),
                
              AppSizes.size20.verticalSpace,
                
              Align(
                alignment: Alignment.center,
                child: Text(AppLocalizations.of(context).orLoginWith, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textColor: AppColors.color.kSenaryTotalBlackText),)
              ),
                
              AppSizes.size20.verticalSpace,
                
              Column(
                children:
                [
                  Row(
                    children:
                    [
                      Expanded(
                        child: CustomSocialButton(buttonText: AppLocalizations.of(context).facebook,
                        platformLogo: AppAssets.iconsPNG.faceBookPNG,
                        buttonBackgroundColor: AppColors.color.kPrimaryDark,
                        buttonTextStyle: AppStyles.textStyle12(textColor: AppColors.color.kQuaternarySemiBlackText),                  
                        ),
                      ),
                  
                      AppSizes.size12.horizontalSpace,
                  
                      Expanded(
                        child: CustomSocialButton(buttonText: AppLocalizations.of(context).google,
                        platformLogo: AppAssets.iconsPNG.googlePNG,
                        buttonBackgroundColor: AppColors.color.kPrimaryDark,
                        buttonTextStyle: AppStyles.textStyle12(textColor: AppColors.color.kQuaternarySemiBlackText),
                        ),
                      ),
                    ],
                  ),
                
                  AppSizes.size12.verticalSpace,
          
                  CustomSocialButton(buttonText: AppLocalizations.of(context).apple,
                  platformLogo: platformLogo,
                  buttonWidth: 174.w,
                  isLogoSpace: false,
                  buttonBackgroundColor: AppColors.color.kPrimaryDark,
                  buttonTextStyle: AppStyles.textStyle12(textColor: AppColors.color.kQuaternarySemiBlackText),
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