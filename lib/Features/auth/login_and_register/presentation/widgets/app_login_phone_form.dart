import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/extensions/string.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/color_system/controller/theme_controller.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_social_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../controllers/email_or_phone_provider.dart';


class LoginFormWithPhone extends ConsumerWidget
{
  LoginFormWithPhone({super.key});

  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final themeMode = ref.watch(themeControllerProvider);
    final platformLogo = themeMode == ThemeMode.light ? AppAssets.iconsPNG.applePNG : AppAssets.iconsPNG.appleDarkPNG;
    final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

    return Container(
      padding: AppPadding.kAppFormPadding,
      width: double.infinity,
      color: Theme.of(context).cardColor,
      child: SingleChildScrollView(
        child: Form(
          key: loginFormKey,
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
                fieldValidator: (value)
                {
                  try
                  {
                    final cleanedValue = value?.convertNumbers;
                    if (cleanedValue == null || cleanedValue.isEmpty)
                    {
                      return 'Phone number is required';
                    }
                    if (!cleanedValue.isPhoneNumber)
                    {
                      return 'Invalid phone number';
                    }
                    return null;
                  } on Exception catch (e)
                  {
                    return e.toString();
                  }
                },
                fieldController: phoneNumberController,
                fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.egyptFlagPNG),
                fieldText: AppLocalizations.of(context).countryCode
              ),
                
              AppSizes.size24.verticalSpace,
                
              Text(AppLocalizations.of(context).password, style: AppStyles.textStyle12(textColor: AppColors.color.kQuaternarySemiBlackText,),),
                
              AppSizes.size8.verticalSpace,
                
              CustomTextFormField(
                fieldValidator: (value)
                {
                  try
                  {
                    
                    if (value == null || value.isEmpty)
                    {
                      return 'Password is required';
                    }
                    if (!value.hasValidPassword)
                    {
                      return 'Invalid Password';
                    }
                    return null;
                  } on Exception catch (e)
                  {
                    return e.toString();
                  }
                },
                fieldController: passwordController,
                fieldText: AppLocalizations.of(context).password,
                fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.corssedEyePNG),

              ),
                
              AppSizes.size16.verticalSpace,
                
              Row(
                children:
                [
                  Checkbox(value: false, onChanged: (value) {}, side: BorderSide(width: AppBorderWidths.width2, color: AppColors.color.kFormButtonsBorders,),),
          
                  Text(AppLocalizations.of(context).remember, style: AppStyles.textStyle12(textColor: AppColors.color.kTertiarySemiGrey),),
          
                  const Spacer(),
          
                  Text(AppLocalizations.of(context).forgetPassword, style: AppStyles.textStyle12(
                    textColor: AppColors.color.kQuinarySemiBlueText,
                    textDecoration: TextDecoration.underline,
                    textDecorationColor: AppColors.color.kForgetPasswordUnderLine,
                    ),
                  ),
                ],
              ),
                
              AppSizes.size16.verticalSpace,
                
              CustomButton(
                buttonText: AppLocalizations.of(context).login,
                buttonOnPressed: ()
                {
                  if (loginFormKey.currentState!.validate())
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