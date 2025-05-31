import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_images.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/widgets/app_form/app_textform_field.dart';
import '../../../controllers/likes_count_controller.dart';
import 'post_share_bottom_modal_sheet.dart';

class CommentCard extends ConsumerWidget
{
  const CommentCard({super.key, required this.padding, this.likesCount});
  final int? likesCount;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Padding(
      padding: padding,
      child: Row(
        children:
        [
          GestureDetector(
            onTap: () => ref.read(likesCountControllerProvider(initialLikes: likesCount!).notifier).toggleLike(),
            child: Container(
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
          ),
          AppSizes.size8.horizontalSpace,
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
          Container(
            width: 38.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: AppColors.color.kGrey002,
              borderRadius: AppBordersRadiuses.circular10,
              border: AppBoxBorders.standard,
            ),
            alignment: Alignment.center,
            child: Center(child: Image.asset(AppAssets.iconsPNG.commentArchive, fit: BoxFit.contain,),),
          ),
          AppSizes.size8.horizontalSpace,
          GestureDetector(
            onTap: () => showSharePostBottomSheet(context),
            child: Container(
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
          ),
        ],
      ),
    );
  }
}