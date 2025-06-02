import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../../config/router/app_router.dart';
import '../../../../../../../config/router/app_routes.dart';
import '../../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../../../../core/widgets/app_buttons/app_button.dart';
import '../../controllers/login_process_controllers/login_state_provider.dart';
import '../../controllers/switcher_controller.dart';
import 'email_field.dart';
import 'password_field.dart';
import 'phone_field.dart';

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
              buttonOnPressed: () async => await loginEmailValidation(ref, context),
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

  Future<void> loginEmailValidation(WidgetRef ref, BuildContext context) async
  {
    if (!formKey.currentState!.validate()) return;
    final isEmailLogin = ref.read(loginMethodSwitcherProvider);
    final loginNotifier = ref.read(loginStateProvider.notifier);
    final password = LoginPassword.passwordController.text;

    if (isEmailLogin)
    {
      final email = LoginEmail.emailController.text;
      await loginNotifier.loginWithEmail(email, password);
    }
    else
    {
      final phone = LoginPhone.phoneNumberController.text;
      await loginNotifier.loginWithPhone(phone, password);
    }

  final state = ref.read(loginStateProvider);
  state.when(
    data: (success)
    {
      if (success)
      {
        AppRouter.router.pushNamed(AppRoutes.kHome);
      }
      else
      {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(AppLocalizations.of(context).incorrectEmailOrPassword),),);
      }
    },
    error: (e, _) {},
    loading: () {},
  );
}

}
