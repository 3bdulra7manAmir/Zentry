import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';

class ForgetPasswordPhoneTitle extends StatelessWidget
{
  const ForgetPasswordPhoneTitle({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        Text(AppLocalizations.of(context).forgotPassword, style: AppStyles.textStyle20(fontColor: AppColors.color.kBlack001,),),
        AppSizes.size13.verticalSpace,
        Text(AppLocalizations.of(context).enterPhoneNumberAssociated, style: AppStyles.textStyle16(fontColor: AppColors.color.kGreyText002,),),
        AppSizes.size7.verticalSpace,
        Text(AppLocalizations.of(context).withYourAccount, 
        style: AppStyles.textStyle14(fontColor: AppColors.color.kGreyText002, fontWeight: AppFontWeights.regularWeight,),
        ),
      ],
    );
  }
}