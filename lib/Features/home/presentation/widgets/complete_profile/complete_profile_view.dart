import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/app_buttons/app_next_button.dart';
import '../../../../../core/widgets/app_modal_bottom_sheet.dart';
import '../../../../follow_business/presentation/widgets/follow_business_card_header.dart';
import 'complete_profile_card.dart';

void showCompleteProfileBottomSheet(BuildContext context)
{
  showAppBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.topOnly12),
    builder: (BuildContext context)
    {
      return SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:
          [
            FollowBusinessCardHeader(headerText: AppLocalizations.of(context).completeProfile,),
            AppSizes.size16.verticalSpace,
            const CompleteProfileCard(),
            AppSizes.size33.verticalSpace,
            const AppNextButton(),
          ],
        ),
      );
    },
  );
}