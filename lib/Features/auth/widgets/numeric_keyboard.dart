import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../../config/l10n/generated/app_localizations.dart';
import '../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../core/data/static/app_keyboard_numbers.dart';
import '../verification_code/presentation/controllers/otp_input_controller.dart';

class NumericKeyboard extends ConsumerWidget
{
  const NumericKeyboard({super.key, required this.maxLength});

  final int maxLength;
  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final List<String> keys = getNumbersList(context);
    return GridView.builder( //HERE
      padding: AppPadding.kAppFormPadding,
      itemCount: 12,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2,
      ),
      itemBuilder: (context, index)
      {
        return InkWell(
          onTap: ()
          {
            final value = keys[index];
            if (value == AppLocalizations.of(context).backSpace)
            {
              ref.read(otpInputProvider.notifier).removeDigit();
            }
            else
            {
              ref.read(otpInputProvider.notifier).addDigit(value, maxLength: maxLength);
            }
          },
          child: Container(
            decoration: BoxDecoration(color: AppColors.color.kNumericButtonBG, borderRadius: AppBorders.buttonBorder10,),
            alignment: Alignment.center,
            child: Text(keys[index], style: AppStyles.textStyle18(fontColor: AppColors.color.kSeptenarySemiGreyText,),),
          ),
        );
      },
    );
  }
}
