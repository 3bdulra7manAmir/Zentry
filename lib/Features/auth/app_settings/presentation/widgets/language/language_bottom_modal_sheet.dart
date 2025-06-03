import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../config/router/app_router.dart';
import '../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../core/constants/app_margins.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_paddings.dart';
import '../../../../../../core/helpers/app_providers.dart';
import '../../../../../../core/data/static/app_form_data/app_languages_list.dart';
import '../../../../../../core/widgets/app_lists/app_listview_builder.dart';

void showLanguageBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.circular10),
    builder: (BuildContext context)
    {
      final List<dynamic> languagesList = getLanguagesList(context);
      return Padding(
        padding: AppPadding.symmetric.largeHorizontal,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:
          [
            AppSizes.size8.verticalSpace,
            Container(
              margin: AppMargins.symmetric.medium,
              alignment: Alignment.center,
              width: 44.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: AppColors.color.kGreyText002,
                borderRadius: AppBordersRadiuses.circular4,
              ),
            ),
            AppSizes.size18.verticalSpace,
            Consumer(
              builder: (context, ref, _)
              {
                final provider = AppProvidersProvider(ref, context);
                return AppListviewBuilder(
                  itemCount: languagesList.length,
                  separatorBuilder:
                      (context, index) => AppSizes.size17.verticalSpace,
                  itemBuilder: (context, index)
                  {
                    return InkWell(
                      onTap: ()
                      {
                        provider.localeController.setLocale(languagesList[index][2] as Locale, index,);
                        AppRouter.router.pop();
                      },
                      child: Row(
                        children:
                        [
                          Image.asset(languagesList[index][0]),
                          AppSizes.size12.horizontalSpace,
                          Text(languagesList[index][1]),
                          const Spacer(),
                          if (index == provider.localeController.selectedLanguageIndex)
                            Icon(
                              Icons.check_circle,
                              size: AppSizes.size20,
                              color: AppColors.color.kGreyText003,
                          ),
                          AppSizes.size10.horizontalSpace,
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
