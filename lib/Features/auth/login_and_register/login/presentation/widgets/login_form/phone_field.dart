import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../../../../core/helpers/app_providers.dart';
import '../../../../../../../core/services/validation/app_validation.dart';
import '../../../../../../../core/widgets/app_form/app_textform_field.dart';
import '../phone_number_bottom_model_sheet.dart';

class LoginPhone extends ConsumerWidget
{
  const LoginPhone({super.key});
  static TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return Column(
      children:
      [
        Row(
          children:
          [
            Text(AppLocalizations.of(context).phoneNumber, style: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002,),),
            const Spacer(),
            Text(AppLocalizations.of(context).or, style: AppStyles.textStyle12(fontColor: AppColors.color.kGreyText002,),),
            AppSizes.size4.horizontalSpace,
            GestureDetector(
              onTap: ()
              {
                provider.current;
                provider.currentNotifier;
              },
              child: Text(AppLocalizations.of(context).email, style: AppStyles.textStyle12(
                  fontWeight: AppFontWeights.boldWeight,
                  textDecoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        AppSizes.size8.verticalSpace,
        CustomTextFormField(
          fieldKeyboardType: TextInputType.phone,
          fieldValidator: (value) => AppValidation.phoneNumberValidation(value, context),
          fieldController: phoneNumberController,
          fieldPrefixIcon: InkWell(
            onTap: () => showCountriesPhoneNumberBottomSheet(context),
            child: Image.asset(provider.countryFlag),
          ),
          fieldText: provider.phoneNumberHolder == 0
            ? AppLocalizations.of(context).egyptCountryCode
            : AppLocalizations.of(context).saudiArabiaCountryCode,
        ),
      ],
    );
  }
}