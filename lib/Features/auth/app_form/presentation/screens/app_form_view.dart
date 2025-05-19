import 'package:flutter/material.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../widgets/app_form_header.dart';
import '../widgets/app_form.dart';

class FormView extends StatelessWidget
{
  const FormView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: AppColors.color.kPrimaryBlue,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Expanded(flex: 1, child: FormHeader()),
          Expanded(flex: 3, child: AppFormView()),
        ],
      ),
    );
  }
}
