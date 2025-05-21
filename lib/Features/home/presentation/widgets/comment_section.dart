import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_margins.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/app_text_form_field.dart';

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
            padding: AppPadding.commentsSection,
            child: Image.asset(AppAssets.iconsPNG.commentsBackArrowPNG,),
          ),
          AppSizes.size25.verticalSpace,
          Container(
            width: double.infinity,
            height: 283.h,
            margin: AppMargins.kApp10Padding,
            decoration: BoxDecoration(
              borderRadius: AppBorders.buttonBorder7,
              image: DecorationImage(image: AssetImage(AppAssets.iconsPNG.mercJeepPNG)),
            ),
          ),
          AppSizes.size30.verticalSpace,
          Padding(
            padding: AppPadding.commentsSection2,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children:
              [
                Image.asset(AppAssets.iconsPNG.hartPNG),
                const Spacer(),
                Container(
                  width: 215.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: AppColors.color.kGrey002,
                    borderRadius: AppBorders.buttonBorder10,
                    border: Border.all(color: AppColors.color.kGrey001, width: AppBorderWidths.width2,),
                  ),child: CustomTextFormField(
                    fieldKeyboardType: TextInputType.text,
                    fieldText: AppLocalizations.of(context).commentHere,
                    fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.userAvatarCommentsCardPNG),
                  ),
                ),
                const Spacer(),
                Image.asset(AppAssets.iconsPNG.saveCommentsPNG)
              ],
            ),
          ),
          AppSizes.size18.verticalSpace,
        ],
      );
    },
  );
}

