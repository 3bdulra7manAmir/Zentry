import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../core/constants/app_images.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/utils/app_reference.dart';
import '../../../../../../core/widgets/app_buttons/app_social_button.dart';

class LoginSocial extends ConsumerWidget
{
  const LoginSocial({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Column(
      children:
      [
        Row(
          children:
          [
            Expanded(
              child: CustomSocialButton(
                buttonText: AppLocalizations.of(context).facebook,
                platformLogo: AppAssets.iconsPNG.loginFacebook,
                buttonBackgroundColor: AppColors.color.kDark002,
                buttonTextStyle: AppStyles.textStyle12(
                  fontColor: AppColors.color.kBlack002,
                ),
              ),
            ),
            AppSizes.size12.horizontalSpace,
            Expanded(
              child: CustomSocialButton(
                buttonText: AppLocalizations.of(context).google,
                platformLogo: AppAssets.iconsPNG.loginGoogle,
                buttonBackgroundColor: AppColors.color.kDark002,
                buttonTextStyle: AppStyles.textStyle12(
                  fontColor: AppColors.color.kBlack002,
                ),
              ),
            ),
          ],
        ),
        AppSizes.size12.verticalSpace,
        CustomSocialButton(
          buttonText: AppLocalizations.of(context).apple,
          platformLogo: AppImages.platformLogo(context, ref),
          buttonWidth: 174.w,
          isLogoSpace: false,
          buttonBackgroundColor: AppColors.color.kDark002,
          buttonTextStyle: AppStyles.textStyle12(fontColor: AppColors.color.kBlack002,),
        ),
      ],
    );
  }
}