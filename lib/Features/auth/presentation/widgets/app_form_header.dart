import 'package:flutter/material.dart';
import 'package:test_app/Core/constants/app_images.dart';
import 'package:test_app/Core/constants/app_padding.dart';

class FormHeader extends StatelessWidget
{
  const FormHeader({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: AppPadding.kCloudLogoPadding,
      child: Image.asset(AppAssets.imagesPNG.cloudRobotPNG),
    );
  }
}