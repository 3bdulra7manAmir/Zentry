import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/font_weights.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/helpers/app_providers.dart';
import '../../../../core/widgets/app_listview_builder.dart';
import '../../../../core/widgets/app_search_appbar.dart';
import '../widgets/search_result_card_detailed.dart';

class SearchResultsView extends ConsumerWidget
{
  const SearchResultsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return Scaffold(
      appBar: const CustomSearchAppBar(locationIcon: true),
      body: Padding(
        padding: AppPadding.horizontal16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSizes.size27.verticalSpace,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                [
                  Text(AppLocalizations.of(context).products, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kBlack001)),
                  AppSizes.size16.horizontalSpace,
                  Text(AppLocalizations.of(context).services, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kGreyText008)),
                  AppSizes.size16.horizontalSpace,
                  Text(AppLocalizations.of(context).posts, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kGreyText008)),
                  AppSizes.size16.horizontalSpace,
                  Text(AppLocalizations.of(context).reels, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kGreyText008)),
                  AppSizes.size16.horizontalSpace,
                  Text(AppLocalizations.of(context).users, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kGreyText008)),
                  AppSizes.size16.horizontalSpace,
                  Text(AppLocalizations.of(context).pages, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kGreyText008)),
                  AppSizes.size16.horizontalSpace,
                  Text(AppLocalizations.of(context).groups, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kGreyText008)),
                ],
              ),
            ),
            AppSizes.size14.verticalSpace,
            Expanded(
              child: provider.searchResults.when(
                data: (results)
                {
                  if (results.isEmpty)
                  {
                    return Center(
                      child: Text(AppLocalizations.of(context).noResultFound, style: AppStyles.textStyle14(
                          fontColor: AppColors.color.kGreyText002,
                          fontWeight: AppFontWeights.regularWeight,
                        ),
                      ),
                    );
                  }
                  return AppListviewBuilder(
                    itemCount: results.length,
                    separatorBuilder: (context, index) => AppSizes.size15.verticalSpace,
                    itemBuilder: (context, index)
                    {
                      final result = results[index];
                      return SearchResultCardDetailed(result: result);
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) => Center(
                  child: Text('${AppLocalizations.of(context).error}: $error', style: AppStyles.textStyle14(
                      fontColor: AppColors.color.kGreyText002,
                      fontWeight: AppFontWeights.regularWeight,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}