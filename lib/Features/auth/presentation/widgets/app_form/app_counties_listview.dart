import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Config/themes/app_colors.dart';
import '../../../../../Core/widgets/app_text_form_field.dart';
import '../../../../../config/themes/app_sizes.dart';

import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/data/app_countries_list.dart';

import '../../../../../core/constants/app_styles.dart';


class CountiesView extends StatelessWidget
{
  const CountiesView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: AppColors.kWhite,
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
                color: AppColors.kSecondary,
                borderRadius: AppBorders.dividerBorder,
              ),
            ),

            AppSizes.size18.verticalSpace,

            Padding(
              padding: AppPadding.kFormPadding,
              child: Column(
                children:
                [
                  CustomTextFormField(fieldText: AppStrings.search, fieldhintStyle: AppStyles.textStyle10(),fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.searchFlagPNG),),
              
                  AppSizes.size16.verticalSpace,
              
                  ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                    Row(
                      children:
                      [
                        Image.asset(countriesList[index][0]),
              
                        AppSizes.size12.horizontalSpace,
                        
                        Text(countriesList[index][1])
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