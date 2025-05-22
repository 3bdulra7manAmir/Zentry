import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
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
        children:
        [
          // Heart button
          Container(
            width: 42.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: AppColors.color.kGrey002,
              borderRadius: AppBordersRadiuses.circular10,
              border: AppBoxBorders.standard,
            ),
            alignment: Alignment.center,
            child: Center(child: Image.asset(AppAssets.iconsPNG.commentHeart, fit: BoxFit.contain,),),
          ),
          AppSizes.size8.horizontalSpace,

          // Comment text field - using Expanded instead of fixed width
          Expanded(
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                color: AppColors.color.kGrey002,
                borderRadius: AppBordersRadiuses.circular10,
                border: AppBoxBorders.standard,
              ),
              child: CustomTextFormField(
                fieldKeyboardType: TextInputType.text,
                fieldText: AppLocalizations.of(context).commentHere,
                fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.commentUserAvatar),
              ),
            ),
          ),
          AppSizes.size8.horizontalSpace,

          // Archive button
          Container(
            width: 38.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: AppColors.color.kGrey002,
              borderRadius: AppBordersRadiuses.circular10,
              border: AppBoxBorders.standard,
            ),
            alignment: Alignment.center,
            child: Center(
              child: Image.asset(AppAssets.iconsPNG.commentArchive, fit: BoxFit.contain,),
            ),
          ),
          AppSizes.size8.horizontalSpace,

          // Share button
          Container(
            width: 38.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: AppColors.color.kGrey002,
              borderRadius: AppBordersRadiuses.circular10,
              border: AppBoxBorders.standard,
            ),
            alignment: Alignment.center,
            child: Center(child: Image.asset(AppAssets.iconsPNG.commentShare, fit: BoxFit.contain,),),
          ),
        ],
      ),
    );
  }
}