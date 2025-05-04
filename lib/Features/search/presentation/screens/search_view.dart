import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/app_search_appbar.dart';

class SearchView extends StatelessWidget
{
  const SearchView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomSearchAppBar(locationIcon: true,),
      body:
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                AppSizes.size27.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                  [
                    Text(AppLocalizations.of(context).products, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textColor: AppColors.color.kSenaryTotalBlackText),),
                    Text(AppLocalizations.of(context).services, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textColor: AppColors.color.kSemiGreyAgain),),
                  ],
                ),
                Text(AppLocalizations.of(context).services, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textColor: AppColors.color.kSemiGreyAgain),),
                AppSizes.size14.verticalSpace,
              ],
            ),
          ),
      );
  }
}