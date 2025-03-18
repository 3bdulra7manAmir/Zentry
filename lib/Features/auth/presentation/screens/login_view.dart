import 'package:flutter/material.dart';
import 'package:test_app/Core/constants/app_colors.dart';
import 'package:test_app/Features/auth/presentation/widgets/login_form.dart';
import 'package:test_app/Features/auth/presentation/widgets/robot_section.dart';

class LoginView extends StatelessWidget
{
  const LoginView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryBlue,
      body:  const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Expanded(
            flex: 1,
            child: RobotSection()
          ),
          Expanded(
            flex: 3,
            child: LoginForm()
          ),
        ],
      ),
    );
  }
}