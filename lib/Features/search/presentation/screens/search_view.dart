import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/app_listview_builder.dart';
import '../../../../core/widgets/app_search_appbar.dart';
import '../controllers/search_providers/search_providers.dart';
import '../widgets/search_related_result_card.dart';

class SearchView extends ConsumerWidget
{
  const SearchView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final searchResults = ref.watch(searchResultsProvider);
    return Scaffold(
      appBar: const CustomSearchAppBar(locationIcon: true),
      body: Padding(
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
                  Text(AppLocalizations.of(context).categories, style: AppStyles.textStyle16(
                      fontWeight: AppFontWeights.semiBoldWeight,
                      fontColor: AppColors.color.kAgainTextDark,
                    ),
                  ),
                  Text(AppLocalizations.of(context).clear, style: AppStyles.textStyle14(
                      fontWeight: AppFontWeights.semiBoldWeight,
                      fontColor: AppColors.color.kForgetPasswordUnderLine,
                    ),
                  ),
                ],
              ),
              AppSizes.size3.verticalSpace,
              Text(AppLocalizations.of(context).relatedResults, style: AppStyles.textStyle12(fontColor: AppColors.color.kSecondarySemiGreyText,),),
              AppSizes.size16.verticalSpace,
              searchResults.when(
                data: (categories)
                {
                  if (categories.isEmpty)
                  {
                    return Center(
                      child: Text(AppLocalizations.of(context).search, style: AppStyles.textStyle14(
                          fontColor: AppColors.color.kSecondarySemiGreyText,
                          fontWeight: AppFontWeights.regularWeight,
                        ),
                      ),
                    );
                  }
                  return AppListviewBuilder(
                    itemCount: categories.length,
                    separatorBuilder: (context, index) => AppSizes.size12.verticalSpace,
                    itemBuilder: (context, index)
                    {
                      final category = categories[index];
                      return SearchRelatedResultCard(category: category);
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) => Center(
                  child: Text('Error: $error', style: AppStyles.textStyle14(
                      fontColor: AppColors.color.kSecondarySemiGreyText,
                      fontWeight: AppFontWeights.regularWeight,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
