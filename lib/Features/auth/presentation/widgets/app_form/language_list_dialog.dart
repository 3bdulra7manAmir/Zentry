import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/app_colors/colors_manager/app_colors.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/data/app_languages_list.dart';
import '../../../../../core/services/localization/localization_controller.dart';
import '../../../../../core/widgets/app_form_container.dart';

void showLanguageDialog(BuildContext context)
{
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context)
    {
      final List<dynamic> languagesList = getLanguagesList(context);
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
              
              Consumer(
                builder: (context, ref, _)
                {
                  final localeController = ref.read(localizationProvider.notifier);

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
                          localeController.setLocale(language[2] as Locale);
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
        ),
      );
    },
  );
}
