import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class CommentCard extends StatelessWidget
{
  const CommentCard({super.key, required this.padding});

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children:
        [
          Image.asset("assets/icons/Inside_Post/Hart.png"),
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
              fieldPrefixIcon: Image.asset("assets/icons/Inside_Post/User_Avatar.png"),
            ),
          ),
          const Spacer(),
          Image.asset("assets/icons/Inside_Post/Save.png")
        ],
      ),
    );
  }
}