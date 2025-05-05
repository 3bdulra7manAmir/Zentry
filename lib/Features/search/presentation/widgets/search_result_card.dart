import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';


class SearchResultCard extends StatelessWidget
{
  const SearchResultCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 359.w,
      height: 140.h,
      decoration: BoxDecoration(
        borderRadius: AppBorders.buttonBorder6,
        //color: Colors.red
        //boxShadow: 
      ),
      child: Row(
        children:
        [
          Image.asset(AppAssets.iconsPNG.carFrogPNG, width: 163.w, height: 140.h, fit: BoxFit.fill,),
          Padding(
            padding: AppPadding.kSearchResultCardPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Row(
                  children:
                  [
                    Text(AppLocalizations.of(context).k800000, style: AppStyles.textStyle14(textColor: AppColors.color.kSenaryTotalBlackText),),
                    AppSizes.size2.horizontalSpace,
                    Text(AppLocalizations.of(context).le, style: AppStyles.textStyle14(textColor: AppColors.color.kSenaryTotalBlackText),),
                    AppSizes.size6.horizontalSpace,
                    Text(AppLocalizations.of(context).negotiation, style: AppStyles.textStyle8(textColor: AppColors.color.kQuinarySemiBlueText),),
                    AppSizes.size14.horizontalSpace,
                    Image.asset(AppAssets.iconsPNG.scanPNG),
                    AppSizes.size6.horizontalSpace,
                    Image.asset(AppAssets.iconsPNG.heartPNG),
                  ],
                ),
                AppSizes.size12.verticalSpace,
                Text(AppLocalizations.of(context).bmw320Model2019, style: AppStyles.textStyle14(fontWeight: AppFontWeights.regularWeight, textColor: AppColors.color.kSenaryTotalBlackText),),
                AppSizes.size18.verticalSpace,
                Row(
                  children:
                  [
                    Image.asset(AppAssets.iconsPNG.speedmeterPNG),
                    AppSizes.size5.horizontalSpace,
                    Text(AppLocalizations.of(context).k5k10, style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight),),
                    AppSizes.size9.horizontalSpace,
                    Image.asset(AppAssets.iconsPNG.calendarPNG),
                    AppSizes.size7.horizontalSpace,
                    Text(AppLocalizations.of(context).k2023, style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight),),
                    AppSizes.size7.horizontalSpace,
                    Image.asset(AppAssets.iconsPNG.unlockPNG),
                    AppSizes.size5.horizontalSpace,
                    Text(AppLocalizations.of(context).used, style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight),),
                  ],
                ),
                AppSizes.size14.verticalSpace,
                Row(
                  children:
                  [
                    Image.asset(AppAssets.iconsPNG.locationPNG),
                    AppSizes.size6.horizontalSpace,
                    Text(AppLocalizations.of(context).cairoEgypt, style: AppStyles.textStyle10(fontWeight: AppFontWeights.semiBoldWeight, textColor: AppColors.color.kSecondarySemiGreyText,),),
                    AppSizes.size16.horizontalSpace,
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}