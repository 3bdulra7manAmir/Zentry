import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/helpers/app_providers.dart';
import '../../../../../../core/services/validation/app_validation.dart';
import '../../../../../../core/widgets/app_form/app_textform_field.dart';
import '../../../../login/presentation/widgets/phone_number_bottom_model_sheet.dart';

class ForgetPasswordPhoneNumber extends ConsumerWidget
{
  ForgetPasswordPhoneNumber({super.key});

  final TextEditingController phoneNumbrerController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: 
      [
        Text(AppLocalizations.of(context).phoneNumber, 
            style: AppStyles.textStyle13(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kGreyText005,),),
          AppSizes.size9.verticalSpace,
          CustomTextFormField(
            fieldValidator: (value) => AppValidation.phoneNumberValidation(value, context),
            fieldController: phoneNumbrerController,
            fieldKeyboardType: TextInputType.number,
            fieldPrefixIcon: InkWell(
              onTap: () => showCountriesPhoneNumberBottomSheet(context),
              child: Image.asset(provider.countryFlag),
            ),
            fieldText: provider.phoneNumberHolder == 0 ? AppLocalizations.of(context).egyptCountryCode
            : AppLocalizations.of(context,).saudiArabiaCountryCode,
          ),
      ],
    );
  }
}