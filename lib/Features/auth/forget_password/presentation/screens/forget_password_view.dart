import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/widgets/app_appbars/app_appbar.dart';
import '../../../../../core/widgets/app_buttons/app_button.dart';
import '../../../../../core/widgets/app_form/app_form.dart';
import '../widgets/another_way.dart';
import '../widgets/forget_password_email/email_address.dart';
import '../widgets/forget_password_email/email_address_header.dart';
import '../widgets/forget_password_phone/phone_number.dart';
import '../widgets/forget_password_phone/phone_number_header.dart';

class ForgetPasswordScreen extends ConsumerWidget
{
  ForgetPasswordScreen({super.key});
  final GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: Text(AppLocalizations.of(context).resetPassword, 
        style: AppStyles.textStyle14(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kBlack001,),),
      ),
      body: SingleChildScrollView(
        child: AppForm(
          formKey: forgetPasswordFormKey,
          formBody: Column(
            children:
            [
              AppSizes.size46.verticalSpace,
              provider.isForgetPasswordPhone ? const ForgetPasswordPhoneTitle() : const ForgetPasswordEmailTitle(),
              AppSizes.size48.verticalSpace,
              Container(
                alignment: Alignment.center,
                margin: AppMargins.symmetric.medium,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    provider.isForgetPasswordPhone ? ForgetPasswordPhoneNumber() : ForgetPasswordEmail(),
                    AppSizes.size27.verticalSpace,
                    provider.isForgetPasswordPhone ? ForgetPasswordAnotherWay(recoveryMethod: AppLocalizations.of(context).dontHavePhone,)
                    : ForgetPasswordAnotherWay(recoveryMethod: AppLocalizations.of(context).dontHaveEmail,),
                    AppSizes.size24.verticalSpace,
                    CustomButton(
                      buttonText: AppLocalizations.of(context).verify,
                      buttonTextStyle: AppStyles.textStyle22(fontColor: AppColors.color.kWhite003),
                      buttonOnPressed: () =>
                      {
                        if (forgetPasswordFormKey.currentState!.validate())
                        {
                          AppRouter.router.pushNamed(AppRoutes.kVerification,)
                        }
                      },
                    ),
                  ],
                ),
              ),
              AppSizes.size25.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
