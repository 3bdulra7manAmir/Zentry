import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/core/constants/app_borders.dart';
import 'package:test_app/core/constants/app_padding.dart';


class CountiesView extends StatelessWidget
{
  const CountiesView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: Column(
        children:
        [
          //Divider
          Container(
            margin: AppPadding.kDividerPadding,
            width: 73.w,
            height: 3.h,
            decoration: BoxDecoration(
              color: AppColors.kSecondaryText,
              borderRadius: AppBorders.dividerBorder,
            ),
          ),

        ],
      ),
    );
  }
}