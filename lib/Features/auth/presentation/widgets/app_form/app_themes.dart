import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/config/themes/font_system/app_sizes.dart';
import 'package:test_app/core/constants/app_borders.dart';
import 'package:test_app/core/constants/app_padding.dart';
import 'package:test_app/core/data/app_countries_list.dart';
import 'package:test_app/core/data/app_theme_list.dart';


class ThemesView extends StatelessWidget
{
  const ThemesView({super.key});

  @override
  Widget build(BuildContext context)
  {
    String? selectedValue = 'Option 1'; // Default selected option
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kWhite,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            AppSizes.size8.verticalSpace,

            //Divider
            Container(
              margin: AppPadding.kFormPadding,
              alignment: Alignment.center,
              width: 44.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: AppColors.kSecondaryText,
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
                      Text("default"),
                      Text("Selected"),
                    ],
                  ),

                  AppSizes.size16.verticalSpace,

                  ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                      [
                        
                        Text(themesList[index]),
                        Radio<String>(
                          value: "Option 1",
                          groupValue: selectedValue,
                          onChanged: (value)
                          {
                            // setState(() {
                            //   selectedValue = value;
                            // });
                          },
                        ),
                      ],
                    ),

                    separatorBuilder: (context, index) => AppSizes.size17.verticalSpace,

                    itemCount: countriesList.length,
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}