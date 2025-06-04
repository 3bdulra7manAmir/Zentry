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


class SearchResultCardDetailed extends StatelessWidget
{
  final SearchResult result;
  const SearchResultCardDetailed({super.key, required this.result,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 370.w,
      height: 163.h,
      decoration: BoxDecoration(borderRadius: AppBordersRadiuses.circular.smallButton,),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          SizedBox(
            width: 163.w,
            height: 163.h,
            child: Image.asset(result.car, fit: BoxFit.cover,),
          ),
          Expanded(
            child: Padding(
              padding: AppPadding.all.xSmallAll,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Row(
                    children:
                    [
                      Expanded(
                        child: Row(
                          children:
                          [
                            Flexible(
                              child: Text(result.price, style: AppStyles.textStyle14(fontColor: AppColors.color.kBlack001),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            if (result.price != "Exchange") ...
                            [
                              AppSizes.size6.horizontalSpace,
                              Text(AppLocalizations.of(context).cash, style: AppStyles.textStyle8(fontColor: AppColors.color.kBlue003),
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
                  AppSizes.size10.verticalSpace,
                  Text(result.title, style: AppStyles.textStyle14(
                      fontWeight: AppFontWeights.regularWeight,
                      fontColor: AppColors.color.kBlack001),
                    overflow: TextOverflow.ellipsis, maxLines: 2,
                  ),
                  AppSizes.size14.verticalSpace,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children:
                      [
                        if (result.ratingMin.isNotEmpty) ...
                        [
                          Image.asset(AppAssets.iconsPNG.searchSpeedometer),
                          AppSizes.size5.horizontalSpace,
                          Text("${result.ratingMin}-${result.ratingMax}", style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight),),
                          AppSizes.size9.horizontalSpace,
                        ],
                        if (result.year.isNotEmpty) ...
                        [
                          Image.asset(AppAssets.iconsPNG.searchCalendar),
                          AppSizes.size7.horizontalSpace,
                          Text(result.year, style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight),),
                          AppSizes.size7.horizontalSpace,
                        ],
                        if (result.status.isNotEmpty) ...
                        [
                          Image.asset(AppAssets.iconsPNG.searchUnlock),
                          AppSizes.size5.horizontalSpace,
                          Text(result.status, style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight),),
                        ],
                      ],
                    ),
                  ),
                  if (result.subimages.isNotEmpty) ...
                  [
                    AppSizes.size14.verticalSpace,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children:
                        [
                          ...result.subimages.map((image) => Padding(padding: AppPadding.single.xxSmallRight, child: Image.asset(image),)),
                        ],
                      ),
                    ),
                  ]
                  else ...
                  [
                    AppSizes.size14.verticalSpace,
                    Row(
                    children:
                    [
                      AppSizes.size4.horizontalSpace,
                      if (result.country.isNotEmpty) ...
                      [
                        Image.asset(AppAssets.iconsPNG.notificationLocation),
                        AppSizes.size6.horizontalSpace,
                        Text(result.country, style: AppStyles.textStyle10(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kGreyText002,),),
                      ],
                      if (result.month.isNotEmpty) ...
                      [
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