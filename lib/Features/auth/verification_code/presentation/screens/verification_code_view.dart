import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/widgets/app_appbar.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../widgets/numeric_keyboard.dart';

class VerificationCodeView extends ConsumerWidget {
  const VerificationCodeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = AppProvidersProvider(ref, context);
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: AppLocalizations.of(context).resetPassword,
        barActions: [
          Row(
            children: [
              Text(
                AppLocalizations.of(context).verifyLater,
                style: AppStyles.textStyle12(
                  fontWeight: AppFontWeights.semiBoldWeight,
                  textColor: AppColors.color.kTertiarySemiGrey,
                  textDecoration: TextDecoration.underline,
                  textDecorationColor: AppColors.color.kTertiarySemiGrey,
                ),
              ),
              AppSizes.size4.horizontalSpace,
              Image.asset(
                provider.localeState.selectedLanguageIndex == 0
                    ? (provider.themeMode == ThemeMode.dark
                        ? AppAssets.iconsPNG.leftWhiteArrowPNG
                        : AppAssets.iconsPNG.rightBackArrowBlackPNG)
                    : (provider.themeMode == ThemeMode.dark
                        ? AppAssets.iconsPNG.rightWhiteArrowPNG
                        : AppAssets.iconsPNG.rightBackArrowBlackPNG),
              ),
              AppSizes.size14.horizontalSpace,
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppSizes.size46.verticalSpace,
            Text(
              AppLocalizations.of(context).verificationCode,
              style: AppStyles.textStyle20(
                fontWeight: AppFontWeights.semiBoldWeight,
                textColor: AppColors.color.kSenaryTotalBlackText,
              ),
            ),
            AppSizes.size13.verticalSpace,
            Text(
              AppLocalizations.of(context).pleaseEnter5DigitalCodeSendTo,
              style: AppStyles.textStyle16(
                textColor: AppColors.color.kSecondarySemiGreyText,
              ),
            ),
            AppSizes.size7.verticalSpace,
            Text(
              AppLocalizations.of(context).appgmailcom,
              style: AppStyles.textStyle14(
                textColor: AppColors.color.kSecondarySemiGreyText,
                fontWeight: AppFontWeights.regularWeight,
              ),
            ),
            AppSizes.size51.verticalSpace,
            Container(
              margin: AppPadding.kAppFormPadding,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context).enterYourCode,
                    style: AppStyles.textStyle13(
                      fontWeight: AppFontWeights.mediumWeight,
                      textColor: AppColors.color.kSeptenarySemiGreyText,
                    ),
                  ),
                  AppSizes.size10.verticalSpace,
                  Consumer(
                    builder: (context, ref, _) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(5, (index) {
                          return Container(
                            width: AppSizes.size60.w,
                            height: AppSizes.size48.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.color.kFormButtonsFill,
                              border: Border.all(
                                color: AppColors.color.kFormButtonsBorders,
                                width: AppSizes.size1.w,
                              ),
                              borderRadius: AppBorders.buttonBorder10,
                            ),
                            child: Text(
                              index < provider.otpProvider.length
                                  ? provider.otpProvider[index]
                                  : '',
                              style: AppStyles.textStyle12(
                                fontWeight: AppFontWeights.semiBoldWeight,
                                textColor: AppColors.color.kSecondaryWhite,
                              ),
                            ),
                          );
                        }),
                      );
                    },
                  ),
                  AppSizes.size26.verticalSpace,
                  Row(
                    children: [
                      Text(
                        AppLocalizations.of(context).dontReceiveACode,
                        style: AppStyles.textStyle14(
                          fontWeight: AppFontWeights.mediumWeight,
                          textColor: AppColors.color.kSeptenarySemiGreyText,
                        ),
                      ),
                      AppSizes.size6.horizontalSpace,
                      GestureDetector(
                        onTap:
                            () => AppRouter.router.push(
                              AppRoutes.kResetPasswordView,
                            ),
                        child: Text(
                          AppLocalizations.of(context).requestPhoneCall,
                          style: AppStyles.textStyle14(
                            fontWeight: AppFontWeights.mediumWeight,
                            textColor: AppColors.color.kVerificationUnderLine,
                            textDecoration: TextDecoration.underline,
                            textDecorationColor:
                                AppColors.color.kVerificationUnderLine,
                          ),
                        ),
                      ),
                    ],
                  ),
                  AppSizes.size24.verticalSpace,
                  CustomButton(
                    buttonOnPressed: () {
                      //AppRouter.router.pushNamed(AppRoutes.kVerificationCodeView);
                    },
                    buttonText: AppLocalizations.of(context).resendIn60s,
                    buttonTextStyle: AppStyles.textStyle16(
                      fontWeight: AppFontWeights.semiBoldWeight,
                      textColor: AppColors.color.kSecondaryWhite,
                    ),
                  ),
                ],
              ),
            ),
            AppSizes.size60.verticalSpace,
            const NumericKeyboard(maxLength: 5),
            AppSizes.size20.verticalSpace,
          ],
        ),
      ),
    );
  }
}
