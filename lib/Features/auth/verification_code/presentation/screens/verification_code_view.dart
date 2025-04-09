import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_appbar.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../widgets/numeric_keyboard.dart';


class VerificationCodeView extends StatelessWidget
{
  const VerificationCodeView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(
      barTitle: AppLocalizations.of(context).resetPassword,
      barActions:
        [
          Row(
            children:
            [
              Text(AppLocalizations.of(context).verifyLater, style: AppStyles.textStyle12(
                fontWeight: AppFontWeights.semiBoldWeight,
                textColor: AppColors.color.kTertiarySemiGrey,
                textDecoration: TextDecoration.underline,
                textDecorationColor: AppColors.color.kTertiarySemiGrey,
                ),
              ),
              AppSizes.size4.horizontalSpace,
              Image.asset(AppAssets.iconsPNG.leftBlackArrowPNG),
              AppSizes.size14.horizontalSpace,
            ],
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children:
          [
            AppSizes.size46.verticalSpace,
        
            Text(AppLocalizations.of(context).verificationCode, style: AppStyles.textStyle20(fontWeight: AppFontWeights.semiBoldWeight, textColor: AppColors.color.kSenaryTotalBlackText,),),
            
            AppSizes.size13.verticalSpace,
            
            Text(AppLocalizations.of(context).pleaseEnter5DigitalCodeSendTo, style: AppStyles.textStyle16(textColor: AppColors.color.kSecondarySemiGreyText,),),
            
            AppSizes.size7.verticalSpace,
            
            Text(AppLocalizations.of(context).appgmailcom, style: AppStyles.textStyle14(textColor: AppColors.color.kSecondarySemiGreyText, fontWeight: AppFontWeights.regularWeight),),
        
            AppSizes.size51.verticalSpace,
        
            Container(
              margin: AppPadding.kAppFormPadding,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(AppLocalizations.of(context).enterYourCode, style: AppStyles.textStyle13(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kSeptenarySemiGreyText),),
        
                  AppSizes.size10.verticalSpace,
        
                  OtpTextField(
                    numberOfFields: 5,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    fillColor: AppColors.color.kFormButtonsFill,
                    filled: true,
                    borderColor: AppColors.color.kFormButtonsBorders,
                    borderWidth: AppSizes.size1.w,
                    borderRadius: AppBorders.buttonBorder10,
                    fieldWidth: AppSizes.size51.w,
                    alignment: Alignment.center,
                    contentPadding: AppPadding.kZeroPadding,
                    keyboardType: TextInputType.number,
                  ),
        
                  AppSizes.size26.verticalSpace,
        
                  Row(
                    children:
                    [
                      Text(AppLocalizations.of(context).dontReceiveACode, style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight, textColor: AppColors.color.kSeptenarySemiGreyText),),
        
                      AppSizes.size6.horizontalSpace,
        
                      Text(AppLocalizations.of(context).requestPhoneCall, style: AppStyles.textStyle14(
                        fontWeight: AppFontWeights.mediumWeight,
                        textColor: AppColors.color.kVerificationUnderLine,
                        textDecoration: TextDecoration.underline,
                        textDecorationColor: AppColors.color.kVerificationUnderLine,
                        ),
                      ),
                    ],
                  ),
        
                  AppSizes.size24.verticalSpace,
        
                  CustomButton(buttonText: AppLocalizations.of(context).resendIn60s, buttonTextStyle: AppStyles.textStyle16(
                    fontWeight: AppFontWeights.semiBoldWeight,
                    textColor: AppColors.color.kSecondaryWhite,
                    ),
                  ),
                ],
              ),
            ),
        
            AppSizes.size60.verticalSpace,
            //Spacer(),
        
            const NumericKeyboard(),
        
            AppSizes.size20.verticalSpace,
          ],
        ),
      ),
    );
  }
}