import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/app_colors/app_colors.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/data/app_countries_list.dart';
import '../../../../../core/widgets/app_form_container.dart';

void showCountiesDialog(BuildContext context)
{
  showDialog(
    context: context,
    barrierDismissible: true, 
    builder: (BuildContext context)
    {
      final List<List<String>> countriesList = getCountriesList(context);
      return Dialog(
        backgroundColor: Theme.of(context).cardColor,
        insetPadding: AppPadding.kFormPadding,
        shape: RoundedRectangleBorder(borderRadius: AppBorders.buttonBorder10),
        child: Padding(
          padding: AppPadding.kFormPadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:
            [
              AppSizes.size8.verticalSpace,
          
              // Divider
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
          
              AppSizes.size18.verticalSpace,
          
              CustomContainer(
                fieldText: AppLocalizations.of(context).search,
                fieldhintStyle: AppStyles.textStyle10(),
                fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.searchFlagPNG),
              ),
          
              AppSizes.size16.verticalSpace,
          
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => Row(
                  children:
                  [
                    Image.asset(countriesList[index][0]),
          
                    AppSizes.size12.horizontalSpace,
                    
                    Text(countriesList[index][1]),
                  ],
                ),
                separatorBuilder: (context, index) => AppSizes.size17.verticalSpace,
                itemCount: countriesList.length,
              ),

              AppSizes.size13.verticalSpace,
            ],
          ),
        ),
      );
    },
  );
}
