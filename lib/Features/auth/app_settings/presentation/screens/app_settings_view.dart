import 'package:flutter/material.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../widgets/app_form_header.dart';
import '../widgets/app_settings.dart';

class AppSettingsScreen extends StatelessWidget
{
  const AppSettingsScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: AppColors.color.kBlue001,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          const Expanded(child: FormHeader()),
          Expanded(flex: 3, child: AppSettings()),
        ],
      ),
    );
  }
}
