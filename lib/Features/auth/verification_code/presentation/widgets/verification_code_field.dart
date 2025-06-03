import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/helpers/app_providers.dart';

class VerificationCodeField extends ConsumerWidget
{
  const VerificationCodeField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(AppLocalizations.of(context).enterYourCode, style: AppStyles.textStyle13(
            fontWeight: AppFontWeights.mediumWeight,
            fontColor: AppColors.color.kGreyText002,
          ),
        ),
        AppSizes.size10.verticalSpace,
        Consumer(
          builder: (context, ref, _)
          {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(5, (index)
              {
                return Container(
                  width: AppSizes.size60.w,
                  height: AppSizes.size48.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.color.kGrey002,
                    border: AppFullBorders.verificationCode,
                    borderRadius: AppBordersRadiuses.circular10,
                  ),
                  child: Text(
                    index < provider.otpProvider.length ? provider.otpProvider[index] : '',
                    style: AppStyles.textStyle12(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kWhite001,),
                  ),
                );
              }),
            );
          },
        ),
      ],
    );
  }
}