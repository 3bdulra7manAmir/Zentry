import 'package:flutter/material.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/core/constants/app_strings.dart';
import 'package:test_app/core/widgets/app_appbar.dart';

class NewPasswordView extends StatelessWidget
{
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: AppStrings.resetPassword,),
      backgroundColor: AppColors.kWhite,
      body: Column(
        children:
        [
          
        ],
      ),
    );
  }
}