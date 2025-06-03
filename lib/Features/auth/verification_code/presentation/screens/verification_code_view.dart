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
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/utils/app_reference.dart';
import '../../../../../core/widgets/app_appbars/app_appbar.dart';
import '../widgets/no_code.dart';
import '../widgets/resend_button.dart';
import '../widgets/verification_code_field.dart';
import '../widgets/verification_code_title.dart';

class VerificationScreen extends ConsumerWidget
{
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: Text(AppLocalizations.of(context).resetPassword, style: AppStyles.textStyle14(
          fontWeight: AppFontWeights.semiBoldWeight,
          fontColor: AppColors.color.kBlack001,
        ),),
        barActions:
        [
          GestureDetector(
            onTap: () => AppRouter.router.pushNamed(AppRoutes.kAuthTabs),
            child: Row(
              children:
              [
                Text(
                  AppLocalizations.of(context).verifyLater, style: AppStyles.textStyle12(
                    fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kGreyText004,
                    textDecoration: TextDecoration.underline, textDecorationColor: AppColors.color.kGreyText004,
                  ),
                ),
                AppSizes.size4.horizontalSpace,
                Image.asset(AppImages.appBarBackSmartArrow3(context, ref),),
                AppSizes.size14.horizontalSpace,
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children:
          [
            AppSizes.size46.verticalSpace,
            const VerificationCodeTitle(),
            AppSizes.size51.verticalSpace,
            Padding(
              padding: AppMargins.horizontal16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  const VerificationCodeField(),
                  AppSizes.size26.verticalSpace,
                  const NoVerificationCode(),
                  AppSizes.size24.verticalSpace,
                  const ResendButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
