import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/app_appbar.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../login/presentation/widgets/phone_number_bottom_model_sheet.dart';
import '../../../widgets/numeric_keyboard.dart';

class ForgetPasswordWithPhoneView extends ConsumerWidget
{
  ForgetPasswordWithPhoneView({super.key});

  final TextEditingController phoneNumbrerController = TextEditingController();
  final GlobalKey<FormState> phoneNumberFormKey = GlobalKey<FormState>();

  @override
Widget build(BuildContext context, WidgetRef ref)
{
  final provider = AppProvidersProvider(ref, context);
  final int? maxLength;
  if (provider.phoneNumberHolder != null && provider.phoneNumberHolder == 1)
  {
    maxLength = 12;
  }
  else
  {
    maxLength = 11;
  }

  if (phoneNumbrerController.text != provider.otpProvider)
  {
    phoneNumbrerController.text = provider.otpProvider;
    phoneNumbrerController.selection = TextSelection.fromPosition(TextPosition(offset: phoneNumbrerController.text.length),);
  }
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: Text(AppLocalizations.of(context).resetPassword, style: AppStyles.textStyle14(
          fontWeight: AppFontWeights.semiBoldWeight,
          fontColor: AppColors.color.kSenaryTotalBlackText,
        ),),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: phoneNumberFormKey,
          child: Column(
            children:
            [
              AppSizes.size46.verticalSpace,
              Text(AppLocalizations.of(context).forgotPassword, style: AppStyles.textStyle20(fontColor: AppColors.color.kSenaryTotalBlackText,),),
              AppSizes.size13.verticalSpace,
              Text(AppLocalizations.of(context).enterPhoneNumberAssociated, style: AppStyles.textStyle16(fontColor: AppColors.color.kSecondarySemiGreyText,),),
              AppSizes.size7.verticalSpace,
              Text(AppLocalizations.of(context).withYourAccount, style: AppStyles.textStyle14(
                  fontColor: AppColors.color.kSecondarySemiGreyText,
                  fontWeight: AppFontWeights.regularWeight,
                ),
              ),
              AppSizes.size48.verticalSpace,
              Container(
                alignment: Alignment.center,
                margin: AppPadding.kAppFormPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Text(
                      AppLocalizations.of(context).phoneNumber, style: AppStyles.textStyle13(
                        fontWeight: AppFontWeights.mediumWeight,
                        fontColor: AppColors.color.kSeptenarySemiGreyText,
                      ),
                    ),
                    AppSizes.size9.verticalSpace,
                    CustomTextFormField(
                      fieldKeyboardType: TextInputType.none,
                      fieldReadOnly: true,
                      fieldValidator: (value) => AppValidation.phoneNumberValidation(value, context),
                      fieldController: phoneNumbrerController,
                      fieldPrefixIcon: InkWell(
                        onTap: () => showCountriesPhoneNumberBottomSheet(context),
                        child: Image.asset(provider.countryFlag),
                      ),
                      fieldText: provider.phoneNumberHolder == 0
                        ? AppLocalizations.of(context).egyptCountryCode
                        : AppLocalizations.of(context,).saudiArabiaCountryCode,
                    ),
                    AppSizes.size28.verticalSpace,
                    Row(
                      children:
                      [
                        Text(AppLocalizations.of(context).dontHavePhone, style: AppStyles.textStyle14(
                            fontWeight: AppFontWeights.mediumWeight,
                            fontColor: AppColors.color.kSeptenarySemiGreyText,
                          ),
                        ),
                        AppSizes.size14.horizontalSpace,
                        GestureDetector(
                          onTap: () => AppRouter.router.pushNamed(AppRoutes.kForgetPasswordEmailView,),
                          child: Text(AppLocalizations.of(context).tryAnotherWay, style: AppStyles.textStyle14(
                              fontWeight: AppFontWeights.mediumWeight,
                              fontColor: AppColors.color.kQuinarySemiBlueText,
                              textDecoration: TextDecoration.underline,
                              textDecorationColor: AppColors.color.kQuinarySemiBlueText,
                            ),
                          ),
                        ),
                      ],
                    ),
                    AppSizes.size24.verticalSpace,
                    CustomButton(
                      buttonText: AppLocalizations.of(context).verify,
                      buttonTextStyle: AppStyles.textStyle22(),
                      buttonOnPressed: ()
                      {
                        if (phoneNumberFormKey.currentState!.validate())
                        {
                          AppRouter.router.pushNamed(AppRoutes.kVerificationCodeView,);
                        }
                      },
                    ),
                  ],
                ),
              ),
              AppSizes.size60.verticalSpace,
              NumericKeyboard(maxLength: maxLength),
              AppSizes.size14.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
