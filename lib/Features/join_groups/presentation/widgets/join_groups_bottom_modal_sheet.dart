import 'package:flutter/material.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/widgets/app_buttons/app_next_button.dart';
import '../../../follow_business/presentation/widgets/follow_business_card_header.dart';
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
          const AppNextButton(),
        ],
      );
    },
  );
}