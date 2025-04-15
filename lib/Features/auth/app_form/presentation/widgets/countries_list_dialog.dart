import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/services/database/static/form_data/app_countries_list.dart';
import '../../../../../core/widgets/app_container.dart';
import '../controllers/countries_icon_update_provider.dart';

void showCountriesBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.buttonBorder10),
    builder: (BuildContext context)
    {
      final countriesList = CountryUtils.getCountryImageAndName(context);
      return Padding(
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

            AppSizes.size18.verticalSpace,

            CustomContainer(
              fieldText: AppLocalizations.of(context).search,
              fieldhintStyle: AppStyles.textStyle10(),
              fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.searchPNG),
            ),

            AppSizes.size16.verticalSpace,

            Consumer(
              builder: (context, ref, _)
              {
                return ListView.separated(
                  shrinkWrap: true,
                  itemCount: countriesList.length,
                  separatorBuilder: (context, index) => AppSizes.size17.verticalSpace,
                  itemBuilder: (context, index)
                  {
                    return InkWell(
                      onTap: ()
                      {
                        ref.read(countryControllerProvider.notifier).setSelectedIndex(index);
                        AppRouter.router.pop();
                      },
                      child: Row(
                        children:
                        [
                          Image.asset(countriesList[index][0]),
                          AppSizes.size12.horizontalSpace,
                          Text(countriesList[index][1]),
                        ],
                      ),
                    );
                  },
                );
              },
            ),

            AppSizes.size13.verticalSpace,
          ],
        ),
      );
    },
  );
}

