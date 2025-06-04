import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/widgets/app_buttons/app_button.dart';
import '../controllers/count_down_controller.dart';

class ResendButton extends ConsumerWidget
{
  const ResendButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    final isEnabled = provider.resendOtpCountdown == 0;
    return CustomButton(
      buttonOnPressed: isEnabled ? () => ref.read(resendCountdownProvider(context).notifier).reset() : null,
      buttonText: isEnabled ? AppLocalizations.of(context).resend : AppLocalizations.of(context).resendIn60s(provider.resendOtpCountdown),
      buttonTextStyle: AppStyles.textStyle16(fontWeight: AppFontWeights.semiBoldWeight,
        fontColor: isEnabled ? AppColors.color.kWhite003 : AppColors.color.kWhite003.withAlpha((0.5 * 255).round())),
    );
  }
}