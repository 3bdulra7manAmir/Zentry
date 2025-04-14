import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../app_form/data/form_data/app_countries_list.dart';
import '../../../app_form/presentation/controllers/countries_icon_update_provider.dart';

void showCountriesPhoneNumberBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.buttonBorder10),
    builder: (BuildContext context)
    {
      final List<List<String>> countriesList = getCountriesList(context);
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

            Consumer(
              builder: (context, ref, _)
              {
                return ListView.separated(
                  shrinkWrap: true,
                  itemCount: 2,
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

