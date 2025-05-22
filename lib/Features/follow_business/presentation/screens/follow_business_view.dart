import 'package:flutter/material.dart';

import '../../../../core/constants/app_borders.dart';
import '../widgets/follow_business_page.dart';

void showFollowBusinessPageBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.topOnly12),
    builder: (BuildContext context)
    {
      return const FollowBusinessPage();
    },
  );
}


