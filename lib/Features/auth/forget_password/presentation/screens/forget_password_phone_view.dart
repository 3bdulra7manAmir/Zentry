import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/services/validation/phone_number_valid.dart';
import '../../../../../core/widgets/app_appbar.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../widgets/numeric_keyboard.dart';


class ForgetPasswordWithPhoneView extends StatelessWidget
{
  ForgetPasswordWithPhoneView({super.key});

  final TextEditingController phoneNumbrerController = TextEditingController();

  // @override
  // void dispose()
  // {
  //   phoneNumbrerController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar:  CustomAppBar(barTitle: AppLocalizations.of(context).resetPassword,),
      body: SingleChildScrollView(
        child: Column(
          children:
          [
            AppSizes.size46.verticalSpace,
        
            Text(AppLocalizations.of(context).forgotPassword, style: AppStyles.textStyle20(textColor: AppColors.color.kSenaryTotalBlackText,),),
            
            AppSizes.size13.verticalSpace,
            
            Text(AppLocalizations.of(context).enterPhoneNumberAssociated, style: AppStyles.textStyle16(textColor: AppColors.color.kSecondarySemiGreyText,),),
            
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
                  Text(AppLocalizations.of(context).phoneNumber, style: AppStyles.textStyle13(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kSeptenarySemiGreyText,)),
        
                  AppSizes.size9.verticalSpace,
                  
                  CustomTextFormField(
                    fieldValidator: phoneNumberValidation,
                    fieldController: phoneNumbrerController,
                    fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.egyptFlagPNG),
                    fieldText: AppLocalizations.of(context).countryCode,

                    ),
        
                  AppSizes.size28.verticalSpace,
        
                  Row(
                    children:
                    [
                      Text(AppLocalizations.of(context).dontHavePhone, style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kSeptenarySemiGreyText),),
        
                      AppSizes.size14.horizontalSpace,
        
                      Text(AppLocalizations.of(context).tryAnotherWay, style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight,
                          textColor: AppColors.color.kQuinarySemiBlueText, textDecoration: TextDecoration.underline,
                          textDecorationColor: AppColors.color.kQuinarySemiBlueText,
                        ),
                      ),
                    ],
                  ),
        
                  AppSizes.size24.verticalSpace,
        
                  CustomButton(
                    buttonText: AppLocalizations.of(context).verify,
                    buttonTextStyle: AppStyles.textStyle22(), buttonOnPressed: () {},
                  ),
                ],
              ),
            ),

            AppSizes.size60.verticalSpace, //104
            //Spacer(),
        
            const NumericKeyboard(),
            
            AppSizes.size14.verticalSpace,
          ],
        ),
      ),
    );
  }
}