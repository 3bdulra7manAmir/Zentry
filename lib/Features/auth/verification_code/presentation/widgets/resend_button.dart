import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_buttons/app_button.dart';
import '../controllers/count_down_controller.dart';

class ResendButton extends ConsumerWidget
{
  const ResendButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final secondsLeft = ref.watch(resendCountdownProvider(context));
    final isEnabled = secondsLeft == 0;
    final l10n = AppLocalizations.of(context);
    return CustomButton(
      buttonOnPressed: isEnabled ? () => ref.read(resendCountdownProvider(context).notifier).reset() : null,
      buttonText: isEnabled ? l10n.resend : l10n.resendIn60s(secondsLeft),
      buttonTextStyle: AppStyles.textStyle16(fontWeight: AppFontWeights.semiBoldWeight,
        fontColor: isEnabled ? AppColors.color.kWhite003 : AppColors.color.kWhite003.withOpacity(0.5),),
    );
  }
}