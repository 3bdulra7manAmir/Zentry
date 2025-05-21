import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../config/themes/font_system/font_weights.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/app_listview_builder.dart';
import '../../../follow_business/presentation/screens/follow_business_page.dart';
import '../../data/model/interest_category.dart';
import '../controllers/interests_providers.dart';

void showMoenyFromInterestsBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.indicatorBorder),
    builder: (BuildContext context) {
      return const MoneyFromInterestsListView();
    },
  );
}

class MoneyFromInterestsListView extends ConsumerWidget {
  const MoneyFromInterestsListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsyncValue = ref.watch(interestCategoriesProvider);
    final selectedCategoriesAsync = ref.watch(selectedCategoriesProvider);

    return Column(
      children: [
        const FollowBusinessCardHeader(headerText: AppStrings.moenyFromInterests),
        Expanded(
          child: categoriesAsyncValue.when(
            data: (categories) => AppListviewBuilder(
              itemBuilder: (context, index) => MoenyFromInterestsCard(
                category: categories[index],
              ),
              itemCount: categories.length,
              separatorBuilder: (context, index) => AppSizes.size13.verticalSpace,
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(
              child: Text(
                '${AppLocalizations.of(context).error}: $error',
                style: AppStyles.textStyle12(fontColor: AppColors.color.kSenaryTotalBlackText),
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 79.h,
          padding: AppPadding.kNextButtonPadding,
          decoration: BoxDecoration(
            color: AppColors.color.kFormButtonsFill,
          ),
          child: selectedCategoriesAsync.when(
            data: (selectedCategories) => CustomButton(
              buttonText: AppStrings.next,
              buttonOnPressed: selectedCategories.isNotEmpty 
                ? () => _onNextPressed(context, selectedCategories)
                : null,
            ),
            loading: () => const CustomButton(
              buttonText: AppStrings.next,
              buttonOnPressed: null,
            ),
            error: (_, __) => const CustomButton(
              buttonText: AppStrings.next,
              buttonOnPressed: null,
            ),
          ),
        ),
      ],
    );
  }

  void _onNextPressed(BuildContext context, List<InterestCategory> selectedCategories) {
    // Navigate to next screen or close bottom sheet
    Navigator.of(context).pop();
    // Add any additional navigation logic here
  }
}

class MoenyFromInterestsCard extends ConsumerWidget {
  final InterestCategory category;

  const MoenyFromInterestsCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategories = ref.watch(selectedCategoriesProvider);
    
    return selectedCategories.when(
      data: (selected) {
        final isSelected = selected.any((cat) => cat.id == category.id);
        
        return Row(
          children: [
            Checkbox(
              value: isSelected,
              onChanged: (value) {
                if (value ?? false) {
                  ref.read(interestsRepositoryProvider).selectCategory(category.id);
                } else {
                  ref.read(interestsRepositoryProvider).unselectCategory(category.id);
                }
                // Invalidate providers to trigger rebuild
                ref.invalidate(selectedCategoriesProvider);
              },
            ),
            Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                color: AppColors.color.kSecondaryWhite,
                borderRadius: AppBorders.kProductItemRadius,
              ),
              child: Image.asset(category.image,
                width: 45.w,
                height: 25.h,
              ),
            ),
            AppSizes.size8.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "interested in",
                        style: AppStyles.textStyle12(
                          fontColor: AppColors.color.kSenaryTotalBlackText,
                          fontWeight: AppFontWeights.semiBoldWeight,
                        ),
                      ),
                      AppSizes.size5.horizontalSpace,
                      Flexible(
                        child: Text(
                          category.name,
                          style: AppStyles.textStyle12(
                            fontColor: AppColors.color.kQuinarySemiBlueText,
                            fontWeight: AppFontWeights.semiBoldWeight,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "${category.activeUsers} Other users",
                    style: AppStyles.textStyle10(fontWeight: AppFontWeights.semiBoldWeight),
                  ),
                ],
              ),
            ),
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(
        child: Text(
          '${AppLocalizations.of(context).error}: $error',
          style: AppStyles.textStyle12(fontColor: AppColors.color.kSenaryTotalBlackText),
        ),
      ),
    );
  }
}