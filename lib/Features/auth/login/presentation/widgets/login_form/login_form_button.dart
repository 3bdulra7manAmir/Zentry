import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../config/router/app_router.dart';
import '../../../../../../config/router/app_routes.dart';
import '../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../../controllers/login_process_controllers/login_state_provider.dart';
import 'login_email.dart';
import 'login_form_password.dart';

class LoginFormButton extends ConsumerWidget
{
  const LoginFormButton({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Column(
      children:
      [
        Consumer(
          builder: (context, ref, child)
          {
            return CustomButton(
              buttonText: AppLocalizations.of(context).login,
              buttonOnPressed: () async => await loginValidation(ref),
            );
          }
        ),
        AppSizes.size20.verticalSpace,
        Align(
          alignment: Alignment.center,
          child: Text(
            AppLocalizations.of(context).orLoginWith,
            style: AppStyles.textStyle12(
              fontWeight: AppFontWeights.boldWeight,
              fontColor: AppColors.color.kBlack001,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> loginValidation(WidgetRef ref) async
  {
    if (!formKey.currentState!.validate())
    {
      await ref.read(loginStateProvider.notifier).loginWithEmail(LoginEmail.emailController.text, LoginPassword.passwordController.text);
      final state = ref.read(loginStateProvider);
      state.whenData((success)
      {
        if (!success)
        {
          AppRouter.router.pushNamed(AppRoutes.kHomeView);
        }
      });
    }
  }
}
