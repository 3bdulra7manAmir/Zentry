import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/color_system/controller/theme_controller.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../config/themes/font_system/font_manager/app_fonts.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/data/app_theme_list.dart';
import '../../../../../config/themes/color_system/controller/theme_string_converter.dart';

void showThemesDialog(BuildContext context)
{
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context)
    {
      return StatefulBuilder(
        builder: (context, setState)
        {
          final List<String> themesList = getThemesList(context);
          return Dialog(
            backgroundColor: Theme.of(context).cardColor,
            insetPadding: AppPadding.kAppFormPadding,
            shape: RoundedRectangleBorder(borderRadius: AppBorders.buttonBorder10),
            child: Padding(
              padding: AppPadding.kAppFormPadding,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children:
                [
                  AppSizes.size8.verticalSpace,

                  Container(
                    margin: AppPadding.kAppFormPadding,
                    alignment: Alignment.center,
                    width: 44.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: AppColors.color.kSecondarySemiGreyText,
                      borderRadius: AppBorders.dividerBorder,
                    ),
                  ),

                  AppSizes.size46.verticalSpace,

                  Container(
                    margin: AppPadding.kAppFormPadding,
                    width: double.infinity,
                    child: Column(
                      children:
                      [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                          [
                            Text(AppStrings.default_, style: AppStyles.textStyle17(
                              fontWeight: AppFontWeights.regularWeight,
                              textColor: AppColors.color.kOctonarySemiBlackText,
                              fontFamily: AppFonts.font.fontName,
                              ),
                            ),

                            Text(AppStrings.selected, style: AppStyles.textStyle17(
                              fontWeight: AppFontWeights.regularWeight,
                              textColor: AppColors.color.kNonarySemiGreyText,
                              fontFamily: AppFonts.font.fontName,
                              ),
                            ),
                          ],
                        ),

                        AppSizes.size16.verticalSpace,

                        Consumer(
                          builder: (context, ref, _)
                          {
                            final themeController = ref.read(themeControllerProvider.notifier);
                            return ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: themesList.length,
                              separatorBuilder: (context, index) => AppSizes.size24.verticalSpace,
                              itemBuilder: (context, index)
                              {
                                final themeLabel = themesList[index];
                                final themeMode = stringToThemeMode(themeLabel);
                                return InkWell(
                                  onTap: ()
                                  {
                                    themeController.setTheme(themeMode);
                                    ref.read(selectedThemeLabelProvider.notifier).state = themeLabel;
                                  },
                                  child: Row(children: [Text(themeLabel),],),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  AppSizes.size30.verticalSpace,
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
