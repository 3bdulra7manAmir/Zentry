// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../../config/l10n/generated/app_localizations.dart';
// import '../../../../config/themes/color_system/app_colors.dart';
// import '../../../../config/themes/font_system/app_font_weights.dart';
// import '../../../../core/constants/app_borders.dart';
// import '../../../../core/constants/app_images.dart';
// import '../../../../core/constants/app_padding.dart';
// import '../../../../core/constants/app_sizes.dart';
// import '../../../../core/constants/app_styles.dart';


// import '../../domain/entities/search_result.dart';

// class SearchResultCard extends StatelessWidget {
//   final SearchResult result;
  
//   const SearchResultCard({
//     super.key,
//     required this.result,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 359.w,
//       height: 140.h,
//       decoration: BoxDecoration(borderRadius: AppBorders.circular5,),
//       child: Row(
//         children: [
//           Image.asset(result.car, width: 163.w, height: 140.h, fit: BoxFit.fill,),
//           Padding(
//             padding: AppPadding.all6,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children:
//               [
//                 Row(
//                   children:
//                   [
//                     Text(result.price, style: AppStyles.textStyle14(fontColor: AppColors.color.kBlack001),),
//                     AppSizes.size6.horizontalSpace,
//                     if (result.price != "Exchange") Text(AppLocalizations.of(context).negotiation, style: AppStyles.textStyle8(fontColor: AppColors.color.kBlue003),),
//                     AppSizes.size14.horizontalSpace,
//                     Image.asset(AppAssets.iconsPNG.searchScan),
//                     AppSizes.size6.horizontalSpace,
//                     Image.asset(AppAssets.iconsPNG.searchHeart),
//                   ],
//                 ),
//                 AppSizes.size12.verticalSpace,
//                 Text(result.title, style: AppStyles.textStyle14(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kBlack001),),
//                 AppSizes.size18.verticalSpace,
//                 Row(
//                   children: [
//                     if (result.ratingMin.isNotEmpty) ...[
//                       Image.asset(AppAssets.iconsPNG.searchSpeedometer),
//                       AppSizes.size5.horizontalSpace,
//                       Text("${result.ratingMin}-${result.ratingMax}", style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight),),
//                       AppSizes.size9.horizontalSpace,
//                     ],
//                     if (result.year.isNotEmpty) ...[
//                       Image.asset(AppAssets.iconsPNG.searchCalendar),
//                       AppSizes.size7.horizontalSpace,
//                       Text(result.year, style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight),),
//                       AppSizes.size7.horizontalSpace,
//                     ],
//                     if (result.status.isNotEmpty) ...[
//                       Image.asset(AppAssets.iconsPNG.searchUnlock),
//                       AppSizes.size5.horizontalSpace,
//                       Text(result.status, style: AppStyles.textStyle10(fontWeight: AppFontWeights.mediumWeight),),
//                     ],
//                   ],
//                 ),
//                 AppSizes.size14.verticalSpace,
                // Row(
                //   children:
                //   [
                //     if (result.country.isNotEmpty) ...[
                //       Image.asset(AppAssets.iconsPNG.notificationLocation),
                //       AppSizes.size6.horizontalSpace,
                //       Text(result.country, style: AppStyles.textStyle10(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kGreyText002,),),
                //     ],
                //     if (result.month.isNotEmpty) ...[
                //       AppSizes.size16.horizontalSpace,
                //       Text(result.month, style: AppStyles.textStyle10(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kGreyText002,),),
//                     ],
//                   ],
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }