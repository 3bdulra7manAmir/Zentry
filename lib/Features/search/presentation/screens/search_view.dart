import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/app_listview_builder.dart';
import '../../../../core/widgets/app_search_appbar.dart';
import '../widgets/search_related_result_card.dart';

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
            padding: AppPadding.kAppFormPadding,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  AppSizes.size10.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      Text(AppLocalizations.of(context).categories, style: AppStyles.textStyle16(fontWeight: AppFontWeights.semiBoldWeight, textColor: AppColors.color.kAgainTextDark),),
                      Text(AppLocalizations.of(context).clear, style: AppStyles.textStyle14(fontWeight: AppFontWeights.semiBoldWeight, textColor: AppColors.color.kForgetPasswordUnderLine),),
                    ],
                  ),
                  AppSizes.size3.verticalSpace,
                  Text(AppLocalizations.of(context).relatedResults, style: AppStyles.textStyle12(fontColor: AppColors.color.kSecondarySemiGreyText),),
                  AppSizes.size16.verticalSpace,
                  //const SearchRelatedResultCard(),
                  AppListviewBuilder(
                    itemBuilder: (context, index) => const SearchRelatedResultCard(),
                    itemCount: 11,
                    separatorBuilder: (context, index) => AppSizes.size15.verticalSpace,
                  ),
                ],
              ),
            ),
          ),
      );
  }
}