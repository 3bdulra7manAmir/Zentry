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
import '../../data/form_data/app_languages_list.dart';
import '../../../../../core/services/localization/controller/localization_controller.dart';
import '../../../../../core/widgets/app_form_container.dart';

void showLanguageBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.buttonBorder10),
    builder: (BuildContext context)
    {
      final List<dynamic> languagesList = getLanguagesList(context);
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
                final localeController = ref.read(localizationControllerProvider.notifier);
                return ListView.separated(
                  shrinkWrap: true,
                  itemCount: languagesList.length,
                  separatorBuilder: (context, index) => AppSizes.size17.verticalSpace,
                  itemBuilder: (context, index)
                  {
                    final language = languagesList[index];
                    return InkWell(
                      onTap: ()
                      {
                        localeController.setLocale(language[2] as Locale, index);
                        AppRouter.router.pop();
                      },
                      child: Row(
                        children:
                        [
                          Image.asset(language[0] as String),
                          AppSizes.size12.horizontalSpace,
                          Text(language[1] as String),
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