// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../controllers/date_provider.dart';

class DataTimePicker extends ConsumerWidget
{
  const DataTimePicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final selectedDate = ref.watch(selectedDateProvider);

    final displayDate = selectedDate != null
      ? "${selectedDate.year} / ${selectedDate.month.toString().padLeft(2, '0')} / ${selectedDate.day.toString().padLeft(2, '0')}"
      : AppLocalizations.of(context).selectDate;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(AppLocalizations.of(context).date, style: AppStyles.textStyle12(fontColor: AppColors.color.kGreyText005,),),
        AppSizes.size8.verticalSpace,
        Container(
          height: 48.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.color.kGrey002,
            borderRadius: AppBordersRadiuses.circular10,
          ),
          child: Row(
            children:
            [
              AppSizes.size20.horizontalSpace,
              Text(displayDate, style: AppStyles.textStyle13(fontColor: AppColors.color.kGreyText002,),),
              const Spacer(),
              Image.asset(AppAssets.iconsPNG.registerArrowDown),
              AppSizes.size20.horizontalSpace,
            ],
          ),
        ),
      ],
    );
  }
}
