import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import '../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';


class PostBio extends StatelessWidget
{
  final String carModel;
  final String carPrice;
  final String carInfo;

  const PostBio({
    super.key,
    required this.carModel,
    required this.carPrice,
    required this.carInfo,
  });

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Text(carModel, style: AppStyles.textStyle14(fontColor: AppColors.color.kGreyText005, fontWeight: AppFontWeights.semiBoldWeight,),),
            Container(
              width: 132.w,
              height: 28.h,
              decoration: BoxDecoration(borderRadius: AppBordersRadiuses.circular8, border: AppFullBorders.completeProfileCard,),
              child: Center(
                child: Text(carPrice, style: AppStyles.textStyle14(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kGreyText005,),),
              ),
            ),
          ],
        ),
        AppSizes.size15.verticalSpace,
        ReadMoreText(
          carInfo,
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: AppLocalizations.of(context).readMore,
          trimExpandedText: AppLocalizations.of(context).showLess,
          style: AppStyles.textStyle12(fontWeight: AppFontWeights.regularWeight),
          moreStyle: AppStyles.textStyle12(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kBlue005,),
          lessStyle: AppStyles.textStyle12(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kBlue005,),
        ),
      ],
    );
  }
}