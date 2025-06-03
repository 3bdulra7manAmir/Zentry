import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/widgets/app_modal_bottom_sheet.dart';


void showSharePostBottomSheet(BuildContext context)
{
  showAppBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.topOnly12),
    builder: (BuildContext context)
    {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children:
        [
          AppSizes.size10.verticalSpace,
          Center(child: Text("Share this Post?", style: AppStyles.textStyle18(fontColor: AppColors.color.kBlack003),),),
          AppSizes.size10.verticalSpace,
        ],
      );
    },
  );
}