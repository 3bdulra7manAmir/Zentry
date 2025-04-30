import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/features/auth/register/presentation/controllers/email_or_phone_provider.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/services/validation/password_valid.dart';
import '../../../../../core/services/validation/phone_number_valid.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../login/presentation/widgets/phone_number_dialog.dart';


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
        child: Form(
          key: signUpPhoneNumberFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              AppSizes.size13.verticalSpace,
              Row(
                children:
                [
                  Text(AppLocalizations.of(context).phoneNumber, style: AppStyles.textStyle12(textColor: AppColors.color.kQuaternarySemiBlackText,),),
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
                    (value) => phoneNumberValidation(value, context),
                fieldController: phoneNumberController,
                fieldPrefixIcon: InkWell(
                  onTap: () => showCountriesPhoneNumberBottomSheet(context),
                  child: Image.asset(provider.countryFlag),
                ),
                fieldText: provider.phoneNumberHolder == 0 ? AppLocalizations.of(context).egyptCountryCode : AppLocalizations.of(context).saudiArabiaCountryCode,
              ),
              AppSizes.size26.verticalSpace,
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
              AppSizes.size24.verticalSpace,
              Text("Invitation Code", style: AppStyles.textStyle13(
                  fontWeight: AppFontWeights.mediumWeight,
                  textColor: AppColors.color.kQuinarySemiBlueText,
                  textDecoration: TextDecoration.underline,
                  textDecorationColor: AppColors.color.kQuinarySemiBlueText,
                ),
              ),
              AppSizes.size32.verticalSpace,
              CustomButton(
                buttonText: AppLocalizations.of(context).signUp,
                buttonOnPressed: () async
                {
                  if (signUpPhoneNumberFormKey.currentState!.validate())
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
