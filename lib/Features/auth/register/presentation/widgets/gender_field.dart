import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../controllers/gender_provider.dart';
import 'gender_picker.dart';

class GenderPicker extends ConsumerWidget
{
  const GenderPicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedGender = ref.watch(selectedGenderProvider);

    final displayGender = (selectedGender?.isNotEmpty ?? false)
        ? (selectedGender == "male" ? "Male" : "Female")
        : "Male";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Gender",
          style: AppStyles.textStyle12(
            textColor: AppColors.color.kSeptenarySemiGreyText,
          ),
        ),
        AppSizes.size8.verticalSpace,
        InkWell(
          onTap: () => showGenderPickerBottomSheet(context),
          borderRadius: AppBorders.buttonBorder10,
          child: Container(
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
                  displayGender,
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
        ),
      ],
    );
  }
}
