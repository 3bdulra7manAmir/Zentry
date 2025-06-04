import 'package:flutter/material.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/widgets/app_modal_bottom_sheet.dart';
import '../widgets/follow_business_page.dart';

void showFollowBusinessPageBottomSheet(BuildContext context)
{
  showAppBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.top.indicator),
    builder: (context) => const FollowBusinessPage(),
  );
}
