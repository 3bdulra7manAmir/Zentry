import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/helpers/app_providers.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_listview_builder.dart';
import '../widgets/follow_business_card.dart';
import '../widgets/follow_business_card_header.dart';

class FollowBusinessPage extends ConsumerWidget
{
  const FollowBusinessPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return Column(
      children:
      [
        FollowBusinessCardHeader(headerText: AppLocalizations.of(context).followBusinessPage),
        Expanded(
          child: provider.businessesAsyncValue.when(
            data: (businesses) => AppListviewBuilder(
              itemBuilder: (context, index) => FollowBusinessCard(business: businesses[index],),
              separatorBuilder: (context, index) => AppSizes.size16.verticalSpace,
              itemCount: businesses.length,
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(
              child: Text('${AppLocalizations.of(context).error}: $error', style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack001,),
              maxLines: 4,
              ),
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
          child: CustomButton(buttonText: AppLocalizations.of(context).next),
        ),
      ],
    );
  }
}
