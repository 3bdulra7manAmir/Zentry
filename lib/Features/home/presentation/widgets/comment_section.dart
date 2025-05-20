import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/widgets/app_text_form_field.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_sizes.dart';

void showCommentsBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.indicatorBorder),
    builder: (BuildContext context)
    {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children:
        [
          AppSizes.size11.verticalSpace,
          Padding(
            padding: EdgeInsetsDirectional.only(start: 13.w),
            child: Image.asset("assets/icons/Comments_Card/Left_Black_Arrow.png",),
          ),
          AppSizes.size25.verticalSpace,
          Container(
            width: double.infinity,
            height: 283.h,
            margin: AppPadding.kApp10Padding,
            decoration: BoxDecoration(
              borderRadius: AppBorders.buttonBorder7,
              image: const DecorationImage(image: AssetImage("assets/icons/Comments_Card/Merc_Jeep.png")),
            ),
          ),
          AppSizes.size30.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 38.w),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children:
              [
                Image.asset("assets/icons/Comments_Card/Hart.png"),
                const Spacer(),
                Container(
                  width: 215.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: AppColors.color.kFormButtonsFill,
                    borderRadius: AppBorders.buttonBorder10,
                    border: Border.all(color: AppColors.color.kFormButtonsBorders, width: AppBorderWidths.width2,),
                  ),child: CustomTextFormField(
                    fieldKeyboardType: TextInputType.text,
                    fieldText: "Comment here !",
                    fieldPrefixIcon: Image.asset("assets/icons/Comments_Card/User_Avatar.png"),
                  ),
                ),
                const Spacer(),
                Image.asset("assets/icons/Comments_Card/Save.png")
              ],
            ),
          ),
          AppSizes.size18.verticalSpace,
        ],
      );
    },
  );
}

