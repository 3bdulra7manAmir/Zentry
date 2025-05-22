import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/app_next_button.dart';
import '../../../../follow_business/presentation/widgets/follow_business_card_header.dart';
import 'money_from_invite_card.dart';

void showMoenyFromInviteBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    //isScrollControlled: true,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.topOnly12),
    builder: (BuildContext context)
    {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children:
        [
          FollowBusinessCardHeader(headerText: AppLocalizations.of(context).moneyFromInvite,),
          AppSizes.size20.verticalSpace,
          const Expanded(child: SingleChildScrollView(child: MoenyFromInviteCard(),),),
          const AppNextButton(),
        ],
      );
    },
  );
}


