import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../config/router/app_router.dart';
import '../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../core/constants/app_margins.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_paddings.dart';
import '../../../../../../core/helpers/app_providers.dart';

void showThemesBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    isDismissible: true,
    isScrollControlled: true,
    backgroundColor: Theme.of(context).cardColor,
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.circular10),
    builder: (BuildContext context)
    {
      return Consumer(
        builder: (context, ref, _)
        {
          final provider = AppProvidersProvider(ref, context);
          return Padding(
            padding: AppPadding.horizontal16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppSizes.size8.verticalSpace,
                Container(
                  margin: AppMargins.horizontal16,
                  alignment: Alignment.center,
                  width: 44.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: AppColors.color.kGreyText002,
                    borderRadius: AppBordersRadiuses.circular4,
                  ),
                ),
                AppSizes.size30.verticalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    RadioListTile<ThemeMode>(
                      value: ThemeMode.light,
                      groupValue: provider.currentThemeMode,
                      onChanged: (value)
                      {
                        if (value != null)
                        {
                          provider.themeController.setTheme(value);
                          AppRouter.router.pop();
                        }
                      },
                      title: Text(AppLocalizations.of(context).light),
                      activeColor: AppColors.color.kGreyText001,
                    ),
                    RadioListTile<ThemeMode>(
                      value: ThemeMode.dark,
                      groupValue: provider.currentThemeMode,
                      onChanged: (value)
                      {
                        if (value != null)
                        {
                          provider.themeController.setTheme(value);
                          AppRouter.router.pop();
                        }
                      },
                      title: Text(AppLocalizations.of(context).dark),
                      activeColor: AppColors.color.kGreyText001,
                    ),
                  ],
                ),
                AppSizes.size30.verticalSpace,
              ],
            ),
          );
        },
      );
    },
  );
}
