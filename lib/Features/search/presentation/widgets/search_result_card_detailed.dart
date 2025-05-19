import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';

import '../../domain/entities/search_result.dart';

class SearchResultCardDetailed extends StatelessWidget {
  final SearchResult result;
  
  const SearchResultCardDetailed({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370.w,
      height: 163.h,
      decoration: BoxDecoration(borderRadius: AppBorders.buttonBorder5,),
      child: Row(
        children: [
          Image.asset(result.car, width: 163.w, height: 163.h, fit: BoxFit.cover,),
          Padding(
            padding: AppPadding.kSearchResultCardPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Row(
                  children:
                  [
                    Text(result.price, style: AppStyles.textStyle14(fontColor: AppColors.color.kSenaryTotalBlackText),),
                    if (result.price != "Exchange") ...[
                      AppSizes.size6.horizontalSpace,
                      Text(AppLocalizations.of(context).cash, style: AppStyles.textStyle8(fontColor: AppColors.color.kQuinarySemiBlueText),),
                    ],
                    AppSizes.size22.horizontalSpace,
                    Image.asset(AppAssets.iconsPNG.scanPNG),
                    AppSizes.size6.horizontalSpace,
                    Image.asset(AppAssets.iconsPNG.heartPNG),
                  ],
                ),
                AppSizes.size10.verticalSpace,
                Text(result.title, style: AppStyles.textStyle14(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kSenaryTotalBlackText),),
                AppSizes.size14.verticalSpace,
                Row(
                  children: [
                    if (result.ratingMin.isNotEmpty) ...[
                      Image.asset(AppAssets.iconsPNG.speedmeterPNG),
                      AppSizes.size5.horizontalSpace,
                      Text("${result.ratingMin}-${result.ratingMax}", style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight),),
                      AppSizes.size9.horizontalSpace,
                    ],
                    if (result.year.isNotEmpty) ...[
                      Image.asset(AppAssets.iconsPNG.calendarPNG),
                      AppSizes.size7.horizontalSpace,
                      Text(result.year, style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight),),
                      AppSizes.size7.horizontalSpace,
                    ],
                    if (result.status.isNotEmpty) ...[
                      Image.asset(AppAssets.iconsPNG.unlockPNG),
                      AppSizes.size5.horizontalSpace,
                      Text(result.status, style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight),),
                    ],
                  ],
                ),
                AppSizes.size14.verticalSpace,
                Row(
                  children:
                  [
                    ...result.subimages.map((image) => Padding(
                      padding: EdgeInsets.only(right: 3.w),
                      child: Image.asset(image),
                    )),
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