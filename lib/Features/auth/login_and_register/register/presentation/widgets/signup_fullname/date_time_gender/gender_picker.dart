import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../../../config/router/app_router.dart';
import '../../../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../../../core/constants/app_borders.dart';
import '../../../../../../../../core/constants/app_images.dart';
import '../../../../../../../../core/constants/app_paddings.dart';
import '../../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../../core/helpers/app_providers.dart';
import '../../../controllers/fullname_controllers/gender_provider.dart';
import 'gender_options.dart';

void showGenderPickerBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.circular10),
    builder: (BuildContext context)
    {
      return Consumer(
        builder: (context, ref, _)
        {
          final provider = AppProvidersProvider(ref, context);
          return Padding(
            padding: AppPadding.symmetric16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children:
              [
                Container(
                  width: 73.w,
                  height: 3.h,
                  decoration: BoxDecoration(color: AppColors.color.kBlack005, borderRadius: AppBordersRadiuses.circular4,),
                ),
                AppSizes.size30.verticalSpace,
                Column(
                  children:
                  [
                    GenderOption(
                      image: AppAssets.iconsPNG.registerFemale,
                      label: AppLocalizations.of(context).female,
                      value: AppLocalizations.of(context).female,
                      groupValue: provider.selectedGender ?? "",
                      onChanged: (value)
                      {
                        ref.read(selectedGenderProvider.notifier).state = value;
                        AppRouter.router.pop();
                      },
                    ),
                    AppSizes.size10.verticalSpace,
                    GenderOption(
                      image: AppAssets.iconsPNG.registerMale,
                      label: AppLocalizations.of(context).male,
                      value: AppLocalizations.of(context).male,
                      groupValue: provider.selectedGender ?? "",
                      onChanged: (value)
                      {
                        ref.read(selectedGenderProvider.notifier).state = value;
                        AppRouter.router.pop();
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
}