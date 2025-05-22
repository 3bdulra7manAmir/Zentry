import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../domain/entities/search_result.dart';

// A widget that represents a detailed card view for search results
// This can be used for both detailed and non-detailed views based on requirements
// Detailed view includes:
// - Main product image
// - Price with cash/negotiation label
// - Title
// - Ratings, year, and status info
// - Subimages (for detailed view)
// - Location and date (for non-detailed view)
class SearchResultCardDetailed extends StatelessWidget {
  // The search result data to be displayed
  final SearchResult result;
  
  const SearchResultCardDetailed({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    // Main container with fixed dimensions
    return Container(
      width: 370.w,
      height: 163.h,
      decoration: BoxDecoration(borderRadius: AppBorders.circular5,),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main product image
          SizedBox(
            width: 163.w,
            height: 163.h,
            child: Image.asset(
              result.car,
              fit: BoxFit.cover,
            ),
          ),
          
          // Content section
          Expanded(
            child: Padding(
              padding: AppPadding.all6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Price row with icons
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                result.price,
                                style: AppStyles.textStyle14(fontColor: AppColors.color.kBlack001),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            if (result.price != "Exchange") ...[
                              AppSizes.size6.horizontalSpace,
                              Text(
                                AppLocalizations.of(context).cash,
                                style: AppStyles.textStyle8(fontColor: AppColors.color.kBlue003),
                              ),
                            ],
                          ],
                        ),
                      ),
                      AppSizes.size10.horizontalSpace,
                      Image.asset(AppAssets.iconsPNG.searchScan),
                      AppSizes.size6.horizontalSpace,
                      Image.asset(AppAssets.iconsPNG.searchHeart),
                    ],
                  ),
                  
                  // Title section
                  AppSizes.size10.verticalSpace,
                  Text(
                    result.title,
                    style: AppStyles.textStyle14(
                      fontWeight: AppFontWeights.regularWeight,
                      fontColor: AppColors.color.kBlack001
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  
                  // Info row (ratings, year, status)
                  AppSizes.size14.verticalSpace,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (result.ratingMin.isNotEmpty) ...[
                          Image.asset(AppAssets.iconsPNG.searchSpeedometer),
                          AppSizes.size5.horizontalSpace,
                          Text(
                            "${result.ratingMin}-${result.ratingMax}",
                            style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight),
                          ),
                          AppSizes.size9.horizontalSpace,
                        ],
                        
                        if (result.year.isNotEmpty) ...[
                          Image.asset(AppAssets.iconsPNG.searchCalendar),
                          AppSizes.size7.horizontalSpace,
                          Text(
                            result.year,
                            style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight),
                          ),
                          AppSizes.size7.horizontalSpace,
                        ],
                        
                        if (result.status.isNotEmpty) ...[
                          Image.asset(AppAssets.iconsPNG.searchUnlock),
                          AppSizes.size5.horizontalSpace,
                          Text(
                            result.status,
                            style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight),
                          ),
                        ],
                      ],
                    ),
                  ),
                  
                  // Subimages row
                  if (result.subimages.isNotEmpty) ...[
                    AppSizes.size14.verticalSpace,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ...result.subimages.map((image) => Padding(
                            padding: AppPadding.rightOnly3,
                            child: Image.asset(image),
                          )),
                        ],
                      ),
                    ),
                  ] else ...[
                    AppSizes.size14.verticalSpace,
                    Row(
                    children:
                    [
                      AppSizes.size4.horizontalSpace,
                      if (result.country.isNotEmpty) ...[
                        Image.asset(AppAssets.iconsPNG.notificationLocation),
                        AppSizes.size6.horizontalSpace,
                        Text(result.country, style: AppStyles.textStyle10(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kGreyText002,),),
                      ],
                      if (result.month.isNotEmpty) ...[
                        AppSizes.size16.horizontalSpace,
                        Text(result.month, style: AppStyles.textStyle10(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kGreyText002,),),
                      ],
                    ],
                  ),
                  ],
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}