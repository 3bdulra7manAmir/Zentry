import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/app_appbar.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_form.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
//import '../../../widgets/numeric_keyboard.dart';

class ForgetPasswordWithEmailView extends StatelessWidget
{
  ForgetPasswordWithEmailView({super.key});

  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: Text(AppLocalizations.of(context).resetPassword, style: AppStyles.textStyle14(
          fontWeight: AppFontWeights.semiBoldWeight,
          fontColor: AppColors.color.kBlack001,
        ),),
      ),
      body: SingleChildScrollView(
        child: AppForm(
          formKey: emailFormKey,
          formBody: Column(
            children:
            [
              AppSizes.size46.verticalSpace,
              Text(AppLocalizations.of(context).forgotPassword, style: AppStyles.textStyle20(fontColor: AppColors.color.kBlack001,),),
              AppSizes.size13.verticalSpace,
              Text(AppLocalizations.of(context).enterPhoneNumberAssociated, style: AppStyles.textStyle16(fontColor: AppColors.color.kGreyText002,),),
              AppSizes.size7.verticalSpace,
              Text(AppLocalizations.of(context).withYourAccount, style: AppStyles.textStyle14(
                  fontColor: AppColors.color.kGreyText002,
                  fontWeight: AppFontWeights.regularWeight,
                ),
              ),
              AppSizes.size48.verticalSpace,
              Container(
                alignment: Alignment.center,
                margin: AppMargins.kAppFormPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Text(AppLocalizations.of(context).emailAddress, style: AppStyles.textStyle12(
                        fontWeight: AppFontWeights.mediumWeight,
                        fontColor: AppColors.color.kBlack002,
                      ),
                    ),
                    AppSizes.size8.verticalSpace,
                    CustomTextFormField(
                      fieldValidator: (value) => AppValidation.emailValidation(value, context),
                      fieldKeyboardType: TextInputType.emailAddress,
                      fieldController: emailController,
                      fieldText: AppLocalizations.of(context).emailAddress,
                    ),
                    AppSizes.size27.verticalSpace,
                    Row(
                      children:
                      [
                        Text(
                          AppLocalizations.of(context).dontHaveEmail, style: AppStyles.textStyle14(
                            fontWeight: AppFontWeights.mediumWeight,
                            fontColor: AppColors.color.kGreyText005,
                          ),
                        ),
                        AppSizes.size14.horizontalSpace,
                        GestureDetector(
                          onTap: () => AppRouter.router.pushNamed(AppRoutes.kForgetPasswordPhoneView,),
                          child: Text(AppLocalizations.of(context).tryAnotherWay, style: AppStyles.textStyle14(
                              fontWeight: AppFontWeights.mediumWeight,
                              fontColor: AppColors.color.kBlue003,
                              textDecoration: TextDecoration.underline,
                              textDecorationColor: AppColors.color.kBlue003,
                            ),
                          ),
                        ),
                      ],
                    ),
                    AppSizes.size24.verticalSpace,
                    CustomButton(
                      buttonOnPressed: ()
                      {
                        AppRouter.router.pushNamed(AppRoutes.kVerificationCodeView,);
                      },
                      buttonText: AppLocalizations.of(context).verify,
                      buttonTextStyle: AppStyles.textStyle22(),
                    ),
                  ],
                ),
              ),
              AppSizes.size60.verticalSpace,
              //const NumericKeyboard(),
              AppSizes.size20.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
