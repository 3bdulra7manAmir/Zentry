import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';

class SearchRelatedResultCard extends StatelessWidget
{
  const SearchRelatedResultCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Image.asset(AppAssets.iconsPNG.catPNG),
        AppSizes.size16.horizontalSpace,
        Text(AppLocalizations.of(context).pets, style: AppStyles.textStyle14(textColor: AppColors.color.kSenaryTotalBlackText, fontWeight: AppFontWeights.semiBoldWeight),),
        AppSizes.size8.horizontalSpace,
        Container(
          height: 20.h,
          width: 20.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: AppBorders.kProductItemRadius, color: AppColors.color.kQuinarySemiBlueText),
          child: Text(AppLocalizations.of(context).num1, style: AppStyles.textStyle14(textColor: AppColors.color.kSecondaryWhite, fontWeight: AppFontWeights.semiBoldWeight),),
        ),
        const Spacer(),
        Image.asset(AppAssets.iconsPNG.wrongPNG),
      ],
    );
  }
}