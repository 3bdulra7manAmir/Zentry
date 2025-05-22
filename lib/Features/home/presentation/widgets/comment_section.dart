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
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.topOnly12),
    builder: (BuildContext context)
    {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children:
        [
          AppSizes.size11.verticalSpace,
          Padding(
            padding: AppPadding.startOnly13,
            child: Image.asset(AppAssets.iconsPNG.commentSectionBackArrow,),
          ),
          AppSizes.size25.verticalSpace,
          Container(
            width: double.infinity,
            height: 283.h,
            margin: AppMargins.horizontal10,
            decoration: BoxDecoration(
              borderRadius: AppBordersRadiuses.circular7,
              image: DecorationImage(image: AssetImage(AppAssets.iconsPNG.commentSectionMercJeep)),
            ),
          ),
          AppSizes.size30.verticalSpace,
          Padding(
            padding: AppPadding.horizontal38,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children:
              [
                Image.asset(AppAssets.iconsPNG.commentSectionHeart),
                const Spacer(),
                Container(
                  width: 215.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: AppColors.color.kGrey002,
                    borderRadius: AppBordersRadiuses.circular10,
                    border: AppFullBorders.completeProfileCard,
                  ),child: CustomTextFormField(
                    fieldKeyboardType: TextInputType.text,
                    fieldText: AppLocalizations.of(context).commentHere,
                    fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.commentSectionUserAvatar),
                  ),
                ),
                const Spacer(),
                Image.asset(AppAssets.iconsPNG.commentSectionSave)
              ],
            ),
          ),
          AppSizes.size18.verticalSpace,
        ],
      );
    },
  );
}

