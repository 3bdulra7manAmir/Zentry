import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_bottom_modal_sheet_drager.dart';
import '../../../../../core/widgets/app_form/app_form.dart';
import 'buttons/login_button.dart';
import 'buttons/register_button.dart';
import 'country/country_field.dart';
import 'language/language_field.dart';
import 'theme/theme_field.dart';

class AppSettings extends StatelessWidget
{
  AppSettings({super.key});
  final GlobalKey<FormState> appFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
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
            const AppBottomModalSheetDrager(),
            AppSizes.size24.verticalSpace,
            Text(AppLocalizations.of(context).welcomeBack, style: AppStyles.textStyle18(fontColor: AppColors.color.kGreyText001,),),
            AppSizes.size28.verticalSpace,
            const LanguageField(),
            AppSizes.size16.verticalSpace,
            const CountryField(),
            AppSizes.size16.verticalSpace,
            const ThemeField(),
            AppSizes.size27.verticalSpace,
            const LoginButton(),
            AppSizes.size16.verticalSpace,
            const RegisterButton(),
          ],
        ),
      ),
    );
  }
}