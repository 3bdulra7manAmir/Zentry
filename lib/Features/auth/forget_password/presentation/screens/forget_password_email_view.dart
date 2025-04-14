import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/router/app_routes.dart';
import 'package:test_app/core/services/validation/email_valid.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_appbar.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../widgets/numeric_keyboard.dart';


class ForgetPasswordWithEmailView extends StatelessWidget
{
  ForgetPasswordWithEmailView({super.key});

  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: AppLocalizations.of(context).resetPassword,),
      body: SingleChildScrollView(
        child: Form(
          key: emailFormKey,
          child: Column(
            children:
            [
              AppSizes.size46.verticalSpace,
          
              Text(AppLocalizations.of(context).forgotPassword, style: AppStyles.textStyle20(textColor: AppColors.color.kSenaryTotalBlackText,)),
              
              AppSizes.size13.verticalSpace,
              
              Text(AppLocalizations.of(context).enterPhoneNumberAssociated, style: AppStyles.textStyle16(textColor: AppColors.color.kSecondarySemiGreyText,)),
              
              AppSizes.size7.verticalSpace,
              
              Text(AppLocalizations.of(context).withYourAccount, style: AppStyles.textStyle14(textColor: AppColors.color.kSecondarySemiGreyText, fontWeight: AppFontWeights.regularWeight),),
          
              AppSizes.size48.verticalSpace,
          
              Container(
                alignment: Alignment.center,
                margin: AppPadding.kAppFormPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Text(AppLocalizations.of(context).emailAddress, style: AppStyles.textStyle12(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kQuaternarySemiBlackText,)),
          
                    AppSizes.size8.verticalSpace,
                    
                    CustomTextFormField(
                      fieldValidator: (value) => emailValidation(value, context),
                      fieldKeyboardType: TextInputType.emailAddress,
                      fieldController: emailController,
                      fieldText: AppLocalizations.of(context).emailAddress,
                      ),
          
                    AppSizes.size27.verticalSpace,
          
                    Row(
                      children:
                      [
                        Text(AppLocalizations.of(context).dontHaveEmail, style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kSeptenarySemiGreyText),),
          
                        AppSizes.size14.horizontalSpace,
          
                        GestureDetector(
                          onTap: () => AppRouter.router.pushNamed(AppRoutes.kForgetPasswordPhoneView),
                          child: Text(AppLocalizations.of(context).tryAnotherWay, style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight,
                              textColor: AppColors.color.kQuinarySemiBlueText, textDecoration: TextDecoration.underline,
                              textDecorationColor: AppColors.color.kQuinarySemiBlueText,
                            ),
                          ),
                        ),
                      ],
                    ),
          
                    AppSizes.size24.verticalSpace,
          
                    CustomButton(
                      buttonOnPressed: ()
                      {
                        if (emailFormKey.currentState!.validate())
                          {
                            //AppRouter.router.
                          }
                      },
                      buttonText: AppLocalizations.of(context).verify,
                      buttonTextStyle: AppStyles.textStyle22(),
                    ),
                  ],
                ),
              ),
              
              AppSizes.size60.verticalSpace, //104
              //Spacer(),
          
              const NumericKeyboard(),
              
              AppSizes.size20.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}