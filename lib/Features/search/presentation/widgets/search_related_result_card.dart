import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../domain/entities/search_category.dart';

class SearchRelatedResultCard extends StatelessWidget
{
  final SearchCategory category;

  const SearchRelatedResultCard({super.key, required this.category,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Image.asset(category.image),
        AppSizes.size16.horizontalSpace,
        Text(
          category.title,
          style: AppStyles.textStyle14(
            fontColor: AppColors.color.kBlack001,
            fontWeight: AppFontWeights.semiBoldWeight,
          ),
        ),
        AppSizes.size8.horizontalSpace,
        category.number != "" ?
        Container(
          height: 20.h,
          width: 20.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: AppBordersRadiuses.circular10,
            color: AppColors.color.kBlue003,
          ),
          child: Text(category.number!, style: AppStyles.textStyle14(
            fontColor: AppColors.color.kWhite003,
            fontWeight: AppFontWeights.semiBoldWeight),),
        ) : const SizedBox.shrink(),
        const Spacer(),
        Image.asset(AppAssets.iconsPNG.searchRelatedWrong),
      ],
    );
  }
}