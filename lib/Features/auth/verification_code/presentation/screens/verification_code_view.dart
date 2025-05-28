import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/utils/app_reference.dart';
import '../../../../../core/widgets/app_appbar.dart';
import '../../../../../core/widgets/app_button.dart';

class VerificationScreen extends ConsumerWidget
{
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: Text(AppLocalizations.of(context).resetPassword, style: AppStyles.textStyle14(
          fontWeight: AppFontWeights.semiBoldWeight,
          fontColor: AppColors.color.kBlack001,
        ),),
        barActions:
        [
          Row(
            children:
            [
              Text(
                AppLocalizations.of(context).verifyLater, style: AppStyles.textStyle12(
                  fontWeight: AppFontWeights.semiBoldWeight,
                  fontColor: AppColors.color.kGreyText004,
                  textDecoration: TextDecoration.underline,
                  textDecorationColor: AppColors.color.kGreyText004,
                ),
              ),
              AppSizes.size4.horizontalSpace,
              Image.asset(AppImages.appBarBackSmartArrow(context, ref),),
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
            Text(AppLocalizations.of(context).verificationCode, style: AppStyles.textStyle20(
                fontWeight: AppFontWeights.semiBoldWeight,
                fontColor: AppColors.color.kBlack001,
              ),
            ),
            AppSizes.size13.verticalSpace,
            Text(AppLocalizations.of(context).pleaseEnter5DigitalCodeSendTo, style: AppStyles.textStyle16(fontColor: AppColors.color.kGreyText002,),),
            AppSizes.size7.verticalSpace,
            Text(AppLocalizations.of(context).appgmailcom, style: AppStyles.textStyle14(
                fontColor: AppColors.color.kGreyText002,
                fontWeight: AppFontWeights.regularWeight,
              ),
            ),
            AppSizes.size51.verticalSpace,
            Container(
              margin: AppMargins.horizontal16,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(AppLocalizations.of(context).enterYourCode, style: AppStyles.textStyle13(
                      fontWeight: AppFontWeights.mediumWeight,
                      fontColor: AppColors.color.kGreyText002,
                    ),
                  ),
                  AppSizes.size10.verticalSpace,
                  Consumer(
                    builder: (context, ref, _)
                    {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(5, (index)
                        {
                          return Container(
                            width: AppSizes.size60.w,
                            height: AppSizes.size48.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.color.kGrey002,
                              border: AppFullBorders.verificationCode,
                              borderRadius: AppBordersRadiuses.circular10,
                            ),
                            child: Text(
                              index < provider.otpProvider.length ? provider.otpProvider[index] : '',
                              style: AppStyles.textStyle12(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kWhite001,),
                            ),
                          );
                        }),
                      );
                    },
                  ),
                  AppSizes.size26.verticalSpace,
                  Row(
                    children:
                    [
                      Text(AppLocalizations.of(context).dontReceiveACode, style: AppStyles.textStyle14(
                          fontWeight: AppFontWeights.mediumWeight,
                          fontColor: AppColors.color.kGreyText005,
                        ),
                      ),
                      AppSizes.size6.horizontalSpace,
                      GestureDetector(
                        onTap: () => AppRouter.router.push(AppRoutes.kResetPassword,),
                        child: Text(AppLocalizations.of(context).requestPhoneCall, style: AppStyles.textStyle14(
                            fontWeight: AppFontWeights.mediumWeight,
                            fontColor: AppColors.color.kBlue002,
                            textDecoration: TextDecoration.underline,
                            textDecorationColor: AppColors.color.kBlue002,
                          ),
                        ),
                      ),
                    ],
                  ),
                  AppSizes.size24.verticalSpace,
                  CustomButton(
                    buttonOnPressed: ()
                    {
                      //AppRouter.router.pushNamed(AppRoutes.kVerificationCodeView);
                    },
                    buttonText: AppLocalizations.of(context).resendIn60s,
                    buttonTextStyle: AppStyles.textStyle16(
                      fontWeight: AppFontWeights.semiBoldWeight,
                      fontColor: AppColors.color.kWhite003,
                    ),
                  ),
                ],
              ),
            ),
            AppSizes.size25.verticalSpace,
          ],
        ),
      ),
    );
  }
}
