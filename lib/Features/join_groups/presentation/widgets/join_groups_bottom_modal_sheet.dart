import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../follow_business/presentation/screens/follow_business_page.dart';
import '../screens/join_groups.dart';

void showJoinGroupsBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.topOnly12),
    builder: (BuildContext context)
    {
      return Column(
        children:
        [
          FollowBusinessCardHeader(headerText: AppLocalizations.of(context).joinGroups,),
          Expanded(
            child: Padding(
              padding: AppPadding.leftOnly30,
              child: const JoinGroupsScreen(),
            ),
          ),
          Container(
            width: double.infinity,
            height: 79.h,
            padding: AppPadding.nextButton,
            decoration: BoxDecoration(color: AppColors.color.kGrey002,),
            child: CustomButton(buttonText: AppLocalizations.of(context).next,),
          ),
        ],
      );
    },
  );
}