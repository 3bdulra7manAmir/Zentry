import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../core/constants/app_borders.dart';
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
        : "Select Date";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Date",
          style: AppStyles.textStyle12(
            textColor: AppColors.color.kSeptenarySemiGreyText,
          ),
        ),
        AppSizes.size8.verticalSpace,
        Container(
          height: 48.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.color.kFormButtonsFill,
            borderRadius: AppBorders.buttonBorder10,
          ),
          child: Row(
            children: [
              AppSizes.size20.horizontalSpace,
              Text(
                displayDate,
                style: AppStyles.textStyle13(
                  textColor: AppColors.color.kSecondarySemiGreyText,
                ),
              ),
              const Spacer(),
              Image.asset("assets/icons/Register/down_Arrow.png"),
              AppSizes.size20.horizontalSpace,
            ],
          ),
        ),
      ],
    );
  }
}
