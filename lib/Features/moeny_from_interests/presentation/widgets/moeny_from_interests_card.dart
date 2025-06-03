import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/helpers/app_providers.dart';
import '../../../../core/widgets/app_circular_indicator.dart';
import '../../data/model/interest_category.dart';
import '../controllers/interests_providers.dart';

class MoenyFromInterestsCard extends ConsumerWidget
{
  final InterestCategory category;

  const MoenyFromInterestsCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return provider.selectedInterestCategories.when(
      data: (selected)
      {
        final isSelected = selected.any((cat) => cat.id == category.id);
        return Row(
          children:
          [
            Checkbox(
              value: isSelected,
              onChanged: (value)
              {
                if (value ?? false)
                {
                  ref.read(interestsRepositoryProvider).selectCategory(category.id);
                }
                else
                {
                  ref.read(interestsRepositoryProvider).unselectCategory(category.id);
                }
                ref.invalidate(selectedCategoriesProvider);
              },
            ),
            Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(color: AppColors.color.kWhite001, borderRadius: AppBordersRadiuses.circular50,),
              child: Image.asset(category.image, width: 45.w, height: 25.h,),
            ),
            AppSizes.size8.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Row(
                    children:
                    [
                      Text(AppLocalizations.of(context).interestedIn, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.semiBoldWeight,),),
                      AppSizes.size5.horizontalSpace,
                      Flexible(
                        child: Text(category.name, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlue003, fontWeight: AppFontWeights.semiBoldWeight,),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Text("${category.activeUsers} ${AppLocalizations.of(context).otherUsers}", style: AppStyles.textStyle10(fontWeight: AppFontWeights.semiBoldWeight),),
                ],
              ),
            ),
          ],
        );
      },
      loading: () => const Center(child: AppCircularIndicator()),
      error: (error, stack) => Center(
        child: Text('${AppLocalizations.of(context).error}: $error', style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack001),
        ),
      ),
    );
  }
}
