import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/constants/app_images.dart';
import 'package:test_app/core/constants/app_padding.dart';
import 'package:test_app/core/constants/app_styles.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../controllers/gender_provider.dart';

void showGenderPickerBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.buttonBorder10),
    builder: (BuildContext context) {
      return Consumer(
        builder: (context, ref, _) {
          String selectedGender = ref.read(selectedGenderProvider) ?? "";

          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 73.w,
                      height: 3.h,
                      decoration: BoxDecoration(
                        color: AppColors.color.kSecondarySemiGreyText,
                        borderRadius: AppBorders.dividerBorder,
                      ),
                    ),
                    AppSizes.size30.verticalSpace,
                    Column(
                      children: [
                        _GenderOption(
                          image: AppAssets.iconsPNG.femalePNG,
                          label: 'Female',
                          value: 'female',
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() => selectedGender = value);
                            ref.read(selectedGenderProvider.notifier).state = value;
                            Navigator.pop(context);
                          },
                        ),
                        AppSizes.size10.verticalSpace,
                        _GenderOption(
                          image: AppAssets.iconsPNG.malePNG,
                          label: 'Male',
                          value: 'male',
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() => selectedGender = value);
                            ref.read(selectedGenderProvider.notifier).state = value;
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                    AppSizes.size24.verticalSpace,
                  ],
                ),
              );
            },
          );
        },
      );
    },
  );
}


class _GenderOption extends StatelessWidget
{
  final String image;
  final String label;
  final String value;
  final String groupValue;
  final ValueChanged<String> onChanged;

  const _GenderOption({
    required this.image,
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: () => onChanged(value),
      borderRadius: AppBorders.buttonBorder10,
      child: Container(
        padding: AppPadding.kAppFormPadding,
        decoration: BoxDecoration(borderRadius: AppBorders.buttonBorder10,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Row(
              children:
              [
                Image.asset(image),
                Text(label, style: AppStyles.textStyle17(textColor: AppColors.color.kOctonarySemiBlackText),),
              ],
            ),
            Radio<String>(
              value: value,
              groupValue: groupValue,
              onChanged: (val) => onChanged(val!),
              activeColor: AppColors.color.kOctonarySemiBlackText,
            ),
          ],
        ),
      ),
    );
  }
}
