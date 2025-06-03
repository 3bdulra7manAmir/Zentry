import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/router/app_router.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/helpers/app_providers.dart';
import '../../../../core/widgets/app_buttons/app_button.dart';
import '../../../../core/widgets/app_lists/app_listview_builder.dart';
import '../../../follow_business/presentation/widgets/follow_business_card_header.dart';
import '../../data/model/interest_category.dart';
import 'moeny_from_interests_card.dart';

class MoneyFromInterestsListView extends ConsumerWidget
{
  const MoneyFromInterestsListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    
    final provider = AppProvidersProvider(ref, context);
    return Column(
      children:
      [
        FollowBusinessCardHeader(headerText: AppLocalizations.of(context).moenyFromInterests),
        Expanded(
          child: provider.categoriesAsyncValue.when(
            data: (categories) => AppListviewBuilder(
              itemBuilder: (context, index) => MoenyFromInterestsCard(category: categories[index],),
              itemCount: categories.length,
              separatorBuilder: (context, index) => AppSizes.size13.verticalSpace,
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(
              child: Text('${AppLocalizations.of(context).error}: $error', style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack001),),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 79.h,
          padding: AppPadding.nextButton,
          decoration: BoxDecoration(
            color: AppColors.color.kGrey002,
          ),
          child: provider.selectedCategoriesAsync.when(
            data: (selectedCategories) => CustomButton(
              buttonText: AppLocalizations.of(context).next,
              buttonOnPressed: selectedCategories.isNotEmpty ? () => onNextPressed(context, selectedCategories) : null,
            ),
            loading: () => CustomButton(
              buttonText: AppLocalizations.of(context).next,
              buttonOnPressed: null,
            ),
            error: (_, __) => CustomButton(
              buttonText: AppLocalizations.of(context).next,
              buttonOnPressed: null,
            ),
          ),
        ),
      ],
    );
  }

  void onNextPressed(BuildContext context, List<InterestCategory> selectedCategories)
  {
    AppRouter.router.pop();
  }
}
