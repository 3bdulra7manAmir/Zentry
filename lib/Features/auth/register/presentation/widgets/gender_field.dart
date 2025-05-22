import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../controllers/gender_provider.dart';
import 'gender_picker.dart';

class GenderPicker extends ConsumerWidget
{
  const GenderPicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final selectedGender = ref.watch(selectedGenderProvider);
    final displayGender = (selectedGender?.isNotEmpty ?? false)
      ? (selectedGender == AppLocalizations.of(context).male ? AppLocalizations.of(context).male :
      AppLocalizations.of(context).female) : AppLocalizations.of(context).male;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(AppLocalizations.of(context).gender, style: AppStyles.textStyle12(fontColor: AppColors.color.kGreyText005,),),
        AppSizes.size8.verticalSpace,
        InkWell(
          onTap: () => showGenderPickerBottomSheet(context),
          borderRadius: AppBordersRadiuses.circular10,
          child: Container(
            height: 48.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: AppColors.color.kGrey002, borderRadius: AppBordersRadiuses.circular10,),
            child: Row(
              children:
              [
                AppSizes.size20.horizontalSpace,
                Text(displayGender, style: AppStyles.textStyle13(fontColor: AppColors.color.kGreyText002,),),
                const Spacer(),
                Image.asset(AppAssets.iconsPNG.registerArrowDown),
                AppSizes.size20.horizontalSpace,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
