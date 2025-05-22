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
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/utils/app_reference.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_form.dart';
import '../../../../../core/widgets/app_social_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../widgets/datatime_field.dart';
import '../widgets/datetime_picker.dart';
import '../widgets/gender_field.dart';
import '../widgets/gender_picker.dart';


class SignUpFormFullName extends ConsumerWidget
{
  SignUpFormFullName({super.key});
  final TextEditingController fullNameController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final GlobalKey<FormState> fullNameFormKey = GlobalKey<FormState>();
    return Container(
      padding: AppPadding.horizontal16,
      width: double.infinity,
      color: Theme.of(context).cardColor,
      child: SingleChildScrollView(
        child: AppForm(
          formKey: fullNameFormKey,
          formBody: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              AppSizes.size13.verticalSpace,
              Text(AppLocalizations.of(context).fullName, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002,),),
              AppSizes.size8.verticalSpace,
              CustomTextFormField(
                fieldKeyboardType: TextInputType.name,
                fieldValidator: (value) => AppValidation.fullNameValidation(value, context),
                fieldController: fullNameController,
                fieldhintStyle: AppStyles.textStyle12(fontWeight: AppFontWeights.regularWeight,),
                fieldText: AppLocalizations.of(context).fullName,
              ),
              AppSizes.size26.verticalSpace,
              Row(
                children:
                [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => showDateTimeBottomSheet(context),
                      child: const DataTimePicker()
                    ),
                  ),
                  AppSizes.size12.horizontalSpace,
                  Expanded(
                    child: GestureDetector(
                      onTap: () => showGenderPickerBottomSheet(context),
                      child: const GenderPicker()
                    ),
                  ),
                ],
              ),
              AppSizes.size24.verticalSpace,
              CustomButton(
                buttonText: AppLocalizations.of(context).signUp,
                buttonOnPressed: ()
                {
                  if (fullNameFormKey.currentState!.validate())
                  {
                    
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
                          buttonTextStyle: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002,),
                        ),
                      ),
                      AppSizes.size12.horizontalSpace,
                      Expanded(
                        child: CustomSocialButton(
                          buttonText: AppLocalizations.of(context).google,
                          platformLogo: AppAssets.iconsPNG.loginGoogle,
                          buttonBackgroundColor: AppColors.color.kDark002,
                          buttonTextStyle: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002,),
                        ),
                      ),
                    ],
                  ),
                  AppSizes.size12.verticalSpace,
                  CustomSocialButton(
                    buttonText: AppLocalizations.of(context).apple,
                    platformLogo: AppImages.platformLogo(context, ref),
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
