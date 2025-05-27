import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/utils/app_reference.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_container.dart';
import '../../../../../core/widgets/app_form.dart';
import '../controllers/initial_tabbar_controller.dart';
import 'countries_bottom_modal_sheet.dart';
import 'language_bottom_modal_sheet.dart';
import 'themes_bottom_modal_sheet.dart';

class AppSettings extends ConsumerWidget
{
  const AppSettings({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    final GlobalKey<FormState> appFormKey = GlobalKey<FormState>();
    return Container(
      padding: AppPadding.horizontal16,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: AppBordersRadiuses.topOnly20,
        color: Theme.of(context).cardColor,
      ),
      child: AppForm(
        formKey: appFormKey,
        formBody: Column(
          children:
          [
            AppSizes.size12.verticalSpace,
            Container(
              width: 73.w,
              height: 3.h,
              decoration: BoxDecoration(
                color: AppColors.color.kGreyText002,
                borderRadius: AppBordersRadiuses.circular4,
              ),
            ),
            AppSizes.size24.verticalSpace,
            Text(AppLocalizations.of(context).welcomeBack, style: AppStyles.textStyle18(fontColor: AppColors.color.kGreyText001,),),
            AppSizes.size28.verticalSpace,
            GestureDetector(
              onTap: () => showLanguageBottomSheet(context),
              child: CustomContainer(
                fieldPrefixIcon: Image.asset(provider.languageFlag),
                fieldText: provider.languageLabel,
                fieldsuffixIcon: AppImages.arrowImage(context, ref),
              ),
            ),
            AppSizes.size16.verticalSpace,
            GestureDetector(
              onTap: () => showCountriesBottomSheet(context),
              child: CustomContainer(
                fieldPrefixIcon: Image.asset(provider.countryFlag),
                fieldText: provider.countryLabel,
                fieldsuffixIcon: AppImages.arrowImage(context, ref),
              ),
            ),
            AppSizes.size16.verticalSpace,
            GestureDetector(
              onTap: () => showThemesBottomSheet(context),
              child: CustomContainer(
                fieldPrefixIcon: Image.asset(
                  provider.themeMode == Brightness.dark
                    ? AppAssets.iconsPNG.formDarkMode
                    : AppAssets.iconsPNG.formLightMode,
                ),
                fieldText: provider.themeLabel,
                fieldsuffixIcon: AppImages.arrowImage(context, ref),
              ),
            ),
            AppSizes.size27.verticalSpace,
            CustomButton(
              buttonText: AppLocalizations.of(context).login,
              buttonTextStyle: AppStyles.textStyle14(fontColor: AppColors.color.kWhite003,),
              buttonOnPressed: ()
              {
                ref.read(tabIndexProvider.notifier).setIndex(0);
                AppRouter.router.pushNamed(AppRoutes.kAuthView, queryParameters: {'tab': '0'});
              },
            ),
            AppSizes.size16.verticalSpace,
            CustomButton(
              buttonText: AppLocalizations.of(context).signUp,
              buttonTextStyle: AppStyles.textStyle14(fontColor: AppColors.color.kBlue007,),
              buttonBackgroundColor: AppColors.color.kWhite004,
              buttonBorderColor: AppColors.color.kBlue008,
              buttonOnPressed: () {
                ref.read(tabIndexProvider.notifier).setIndex(1);
                AppRouter.router.pushNamed(AppRoutes.kAuthView, queryParameters: {'tab': '1'});
              },
            ),
          ],
        ),
      ),
    );
  }
}
