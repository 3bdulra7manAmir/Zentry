import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/Core/constants/app_colors.dart';
import 'package:test_app/Core/constants/app_images.dart';
import 'package:test_app/Core/constants/app_padding.dart';

class RobotSection extends StatelessWidget
{
  const RobotSection({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: AppPadding.kAll10,
      child: Image.asset(AppAssets.imagesPNG.cloudRobotPNG),
    );
  }
}