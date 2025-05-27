import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../controllers/switcher_controller.dart';

class ForgetPasswordAnotherWay extends ConsumerWidget
{
  const ForgetPasswordAnotherWay({super.key, required this.recoveryMethod});

  final String recoveryMethod;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final current = ref.read(switcherProvider);
    return Row(
      children:
      [
        Text(recoveryMethod, style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight,
          fontColor: AppColors.color.kGreyText005,),),
        AppSizes.size14.horizontalSpace,
        GestureDetector(
          onTap: () => ref.read(switcherProvider.notifier).state = !current,
          child: Text(
            AppLocalizations.of(context).tryAnotherWay, style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight,
              fontColor: AppColors.color.kBlue003,
              textDecoration: TextDecoration.underline,
              textDecorationColor: AppColors.color.kBlue003,
            ),
          ),
        ),
      ],
    );
  }
}
