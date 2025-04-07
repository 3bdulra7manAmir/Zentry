import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/themes/app_colors/app_colors.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../config/themes/font_system/app_fonts.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/data/app_theme_list.dart';

class ThemesView extends StatefulWidget
{
  const ThemesView({super.key});

  @override
  State<ThemesView> createState() => _ThemesViewState();
}

class _ThemesViewState extends State<ThemesView>
{
  String? selectedValue = 'Option 1'; // Default selected option

  @override
  Widget build(BuildContext context)
  {
    return Material(
      color: Colors.black54,
      child: Stack(
          children:
          [
            //POP UP Background
          GestureDetector(
            onTap: (){Navigator.pop(context);},
            child: Container(
              color: Colors.transparent,
              width: double.infinity,
              height: double.infinity,
            ),
          ),


            AppSizes.size8.verticalSpace,

            Container(
              margin: AppPadding.kFormPadding,
              alignment: Alignment.center,
              width: 44.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: AppColors.color.kSecondary,
                borderRadius: AppBorders.dividerBorder,
              ),
            ),

            AppSizes.size46.verticalSpace,

            Container(
              margin: AppPadding.kFormPadding,
              width: double.infinity,
              child: Column(
                children:
                [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      Text(AppStrings.default_,
                          style: AppStyles.textStyle17(
                              fontWeight: AppFontWeights.regularWeight,
                              textColor: AppColors.color.kSenaryText,
                              fontFamily: AppFonts.font.fontName)),
                      Text(AppStrings.selected,
                          style: AppStyles.textStyle17(
                              fontWeight: AppFontWeights.regularWeight,
                              textColor: AppColors.color.kQuinaryText,
                              fontFamily: AppFonts.font.fontName)),
                    ],
                  ),

                  AppSizes.size16.verticalSpace,

                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: themesList.length,
                    itemBuilder: (context, index) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                      [
                        Text(themesList[index]),
                        Radio<String>(
                          value: themesList[index],
                          groupValue: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                        ),
                      ],
                    ),
                    separatorBuilder: (context, index) =>
                        AppSizes.size17.verticalSpace,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
