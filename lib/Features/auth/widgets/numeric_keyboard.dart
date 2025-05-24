import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/widgets/app_gridbuilder.dart';
import '../../../config/l10n/generated/app_localizations.dart';
import '../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../core/constants/app_paddings.dart';
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
    return AppGridbuilder(
      padding: AppPadding.horizontal16,
      itemCount: 12,
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
            decoration: BoxDecoration(color: AppColors.color.kGrey005, borderRadius: AppBordersRadiuses.circular10,),
            alignment: Alignment.center,
            child: Text(keys[index], style: AppStyles.textStyle18(fontColor: AppColors.color.kGreyText005,),),
          ),
        );
      },
    );
  }
}
