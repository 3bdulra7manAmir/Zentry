import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class NoVerificationCode extends StatelessWidget
{
  const NoVerificationCode({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
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
    );
  }
}