import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../core/constants/app_images.dart';
import '../../domain/entities/join_groups_entity.dart';
import '../controllers/join_groups_items_provider.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../follow_business/presentation/screens/follow_business_page.dart';

class JoinGroupsScreen extends ConsumerWidget {
  const JoinGroupsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final joinGroupsAsyncValue = ref.watch(joinGroupsItemsProvider);
    return joinGroupsAsyncValue.when(
      data: (groups) => GridViewBuilder(
        itemCount: groups.length,
        itemBuilder: (context, index) => JoinGroupsCard(group: groups[index]),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('${AppLocalizations.of(context).error}: $error')),
    );
  }
}

void showJoinGroupsBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.indicatorBorder),
    builder: (BuildContext context) {
      return Column(
        children: [
          const FollowBusinessCardHeader(
            headerText: AppStrings.joinGroups,
          ),
          Expanded(
            child: Padding(
              padding: AppPadding.joinGroups,
              child: const JoinGroupsScreen(),
            ),
          ),
          Container(
            width: double.infinity,
            height: 79.h,
            padding: AppPadding.kNextButtonPadding,
            decoration: BoxDecoration(
              color: AppColors.color.kGrey002,
            ),
            child: const CustomButton(
              buttonText: AppStrings.next,
            ),
          ),
        ],
      );
    },
  );
}

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.separatorBuilder,
    this.crossAxisCount,
    this.mainAxisSpacing,
    this.crossAxisSpacing,
    this.childAspectRatio,
  });

  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder? separatorBuilder;
  final int? crossAxisCount;
  final double? mainAxisSpacing;
  final double? crossAxisSpacing;
  final double? childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: AppPadding.joinGroups2,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount ?? 2,
        mainAxisSpacing: mainAxisSpacing ?? 12.0,
        crossAxisSpacing: crossAxisSpacing ?? 12.0,
        childAspectRatio: childAspectRatio ?? 1.4,
      ),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}

class JoinGroupsCard extends StatelessWidget {
  final JoinGroupsEntity group;
  const JoinGroupsCard({super.key, required this.group});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 149.w,
          height: 105.h,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.color.kOrange002.withOpacity(0.5),
                blurRadius: 5,
                offset: const Offset(0, 0),
                spreadRadius: 0,
              ),
            ],
            color: AppColors.color.kWhite001,
            borderRadius: AppBorders.buttonBorder10,
            border: Border.all(
              color: AppColors.color.kOrange002,
              width: AppBorderWidths.width2,
            ),
          ),
          child: Column(
            children: [
              AppSizes.size20.verticalSpace,
              Text(
                group.title,
                style: AppStyles.textStyle12(
                  fontColor: AppColors.color.kBlack001,
                ),
              ),
              AppSizes.size5.verticalSpace,
              Text(
                group.membersCount,
                style: AppStyles.textStyle10(
                  fontWeight: AppFontWeights.mediumWeight,
                  fontColor: AppColors.color.kBlue003,
                ),
              ),
              AppSizes.size5.verticalSpace,
              Image.asset(AppAssets.iconsPNG.groupMembers)
            ],
          ),
        ),
        Positioned(
          top: -20.h,
          left: 0,
          right: 22.w,
          child: Image.asset(
            group.image,
            width: 38.w,
            height: 38.h,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}