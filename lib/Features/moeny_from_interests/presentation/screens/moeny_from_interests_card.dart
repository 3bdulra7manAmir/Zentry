import 'package:flutter/material.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/widgets/app_modal_bottom_sheet.dart';
import '../widgets/moeny_from_interests_list.dart';

void showMoenyFromInterestsBottomSheet(BuildContext context)
{
  showAppBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.top.indicator),
    builder: (BuildContext context)
    {
      return const MoneyFromInterestsListView();
    },
  );
}


