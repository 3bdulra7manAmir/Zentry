import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_form.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../login/presentation/widgets/phone_number_bottom_model_sheet.dart';
import '../controllers/email_or_phone_provider.dart';


class SignUpFormPhoneNumber extends ConsumerWidget
{
  SignUpFormPhoneNumber({super.key});
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    //final signUpType = ref.watch(signUpTypeProvider);
    final GlobalKey<FormState> signUpPhoneNumberFormKey = GlobalKey<FormState>();
    return Container(
      padding: AppPadding.kAppFormPadding,
      width: double.infinity,
      color: Theme.of(context).cardColor,
      child: SingleChildScrollView(
        child: AppForm(
          formKey: signUpPhoneNumberFormKey,
          formBody: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              AppSizes.size13.verticalSpace,
              Row(
                children:
                [
                  Text(AppLocalizations.of(context).phoneNumber, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002,),),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => ref.read(signUpTypeProvider.notifier).toggleSignUpType(), //HERE //Needs Fix
                    child: Text(AppLocalizations.of(context).email, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight,),),),
                ],
              ),
              AppSizes.size8.verticalSpace,
              CustomTextFormField(
                fieldKeyboardType: TextInputType.phone,
                fieldValidator:
                    (value) => AppValidation.phoneNumberValidation(value, context),
                fieldController: phoneNumberController,
                fieldPrefixIcon: InkWell(
                  onTap: () => showCountriesPhoneNumberBottomSheet(context),
                  child: Image.asset(provider.countryFlag),
                ),
                fieldText: provider.phoneNumberHolder == 0 ? AppLocalizations.of(context).egyptCountryCode : AppLocalizations.of(context).saudiArabiaCountryCode,
              ),
              AppSizes.size26.verticalSpace,
              Text(AppLocalizations.of(context).password, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002,),),
              AppSizes.size8.verticalSpace,
              CustomTextFormField(
                fieldKeyboardType: TextInputType.text,
                fieldValidator: (value) => AppValidation.passwordValidation(value, context),
                fieldController: passwordController,
                fieldObscureText: provider.obscureText3,
                fieldText: AppLocalizations.of(context).password,
                fieldsuffixIcon: GestureDetector(
                  onTap: () => provider.obscureTextState3,
                  child: Image.asset(provider.obscureText3 ? AppAssets.iconsPNG.loginPasswordHidden : AppAssets.iconsPNG.loginPasswordVisible,),
                ),
              ),
              AppSizes.size24.verticalSpace,
              Text(AppLocalizations.of(context).invitationCode, style: AppStyles.textStyle13(
                  fontWeight: AppFontWeights.mediumWeight,
                  fontColor: AppColors.color.kBlue003,
                  textDecoration: TextDecoration.underline,
                  textDecorationColor: AppColors.color.kBlue003,
                ),
              ),
              AppSizes.size32.verticalSpace,
              CustomButton(
                buttonText: AppLocalizations.of(context).signUp,
                buttonOnPressed: () async
                {
                  if (signUpPhoneNumberFormKey.currentState!.validate())
                  {
                    //HERE
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
