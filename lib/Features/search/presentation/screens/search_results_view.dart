import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/themes/color_system/colors_manager/app_colors.dart';
import 'package:test_app/config/themes/font_system/app_font_weights.dart';
import 'package:test_app/core/constants/app_styles.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/app_search_appbar.dart';

class SearchResultsView extends StatelessWidget
{
  const SearchResultsView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomSearchAppBar(locationIcon: true,),
      body: Column(
        children:
        [
          AppSizes.size27.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Text("Products", style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textColor: AppColors.color.kSenaryTotalBlackText),),
                Text("Services", style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textColor: AppColors.color.kSemiGreyAgain),),
                Text("Posts", style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textColor: AppColors.color.kSemiGreyAgain),),
                Text("Reels", style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textColor: AppColors.color.kSemiGreyAgain),),
                Text("users", style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textColor: AppColors.color.kSemiGreyAgain),),
                Text("Pages", style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textColor: AppColors.color.kSemiGreyAgain),),
                Text("Groups", style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textColor: AppColors.color.kSemiGreyAgain),),
              ],
            ),
          ),
          AppSizes.size14.verticalSpace,
          
        ],
      ),
    );
  }
}