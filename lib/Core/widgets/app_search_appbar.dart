import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../config/themes/font_system/app_font_weights.dart';
import '../constants/app_padding.dart';
import '../constants/app_sizes.dart';
import '../constants/app_styles.dart';
import 'app_appbar.dart';
import 'app_text_form_field.dart';

class CustomSearchAppBar extends StatelessWidget implements PreferredSizeWidget
{
  const CustomSearchAppBar({super.key, required this.locationIcon, this.actionsWidget,});
  final bool locationIcon;
  final Widget? actionsWidget;

  @override
  Widget build(BuildContext context)
  {
    return CustomAppBar(
      barTitle: SizedBox(width: 295.w, height: 38.h,
        child: CustomTextFormField(
          fieldText: "Search",
          fieldKeyboardType: TextInputType.text,
          fieldFillColor: AppColors.color.kSecondaryWhite,
          fieldsuffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children:
            [
              Image.asset("assets/icons/Notifications/Location.png"),
              AppSizes.size6.horizontalSpace,
              Text("Cairo,Egypt", style: AppStyles.textStyle10(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kSecondarySemiGreyText,),),
              AppSizes.size16.horizontalSpace,
            ],
          ),
        ),
      ),
      barActions: [AppSizes.size20.horizontalSpace, locationIcon ? ( actionsWidget ?? Image.asset("assets/icons/Notifications/Location_Yellow.png") ) : const SizedBox.shrink(),],
      barActionsPadding: AppPadding.kSearchIconPadding,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}