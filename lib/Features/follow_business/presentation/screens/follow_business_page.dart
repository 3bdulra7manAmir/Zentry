import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_follow_button.dart';
import '../../../../core/widgets/app_listview_builder.dart';
import '../../domain/entity/business.dart';
import '../controllers/business_providers.dart';

void showFollowBusinessPageBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.indicatorBorder),
    builder: (BuildContext context) {
      return const FollowBusinessPage();
    },
  );
}

class FollowBusinessPage extends ConsumerWidget {
  const FollowBusinessPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final businessesAsyncValue = ref.watch(businessesProvider);

    return Column(
      children: [
        const FollowBusinessCardHeader(headerText: AppStrings.followBusinessPage),
        Expanded(
          child: businessesAsyncValue.when(
            data: (businesses) => AppListviewBuilder(
              itemBuilder: (context, index) => FollowBusinessCard(
                business: businesses[index],
              ),
              separatorBuilder: (context, index) => AppSizes.size16.verticalSpace,
              itemCount: businesses.length,
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(
              child: Text(
                'Error loading businesses: $error',
                style: AppStyles.textStyle12(
                  fontColor: AppColors.color.kSenaryTotalBlackText,
                ),
                maxLines: 4,
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
          child: const CustomButton(buttonText: AppStrings.next),
        ),
      ],
    );
  }
}

class FollowBusinessCardHeader extends StatelessWidget {
  const FollowBusinessCardHeader({super.key, required this.headerText, this.actionsIcon});

  final String headerText;
  final Widget? actionsIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        AppSizes.size15.verticalSpace,
        Row(
          children: [
            AppSizes.size10.horizontalSpace,
            Image.asset(AppAssets.iconsPNG.closePNG),
            const Spacer(),
            Text(
              headerText,
              style: AppStyles.textStyle12(
                fontWeight: AppFontWeights.semiBoldWeight,
                fontColor: AppColors.color.kSenaryTotalBlackText,
              ),
            ),
            const Spacer(),
            actionsIcon ?? Image.asset(AppAssets.iconsPNG.vaultPNG),
            AppSizes.size16.horizontalSpace,
          ],
        ),
        Divider(
          color: AppColors.color.kSemiGrey3,
          thickness: AppSizes.size2,
        ),
        AppSizes.size21.verticalSpace,
      ],
    );
  }
}

class FollowBusinessCard extends StatelessWidget {
  final Business business;

  const FollowBusinessCard({
    super.key,
    required this.business,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.kFollowingBusinessPagePadding,
      child: Row(
        children: [
          // Use business avatar here
          Image.asset(business.image),
          AppSizes.size12.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                business.title,
                style: AppStyles.textStyle12(
                  fontColor: AppColors.color.kSenaryTotalBlackText,
                  fontWeight: AppFontWeights.semiBoldWeight,
                ),
              ),
              Text(
                business.subtitle,
                style: AppStyles.textStyle12(
                  fontColor: AppColors.color.kSemiGrey4,
                  fontWeight: AppFontWeights.semiBoldWeight,
                ),
              ),
            ],
          ),
          const Spacer(),
          const CustomFollowButton(),
        ],
      ),
    );
  }
}