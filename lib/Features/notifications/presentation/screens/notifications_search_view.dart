import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_sizes.dart';
import '../widgets/friend_request_card.dart';
import '../widgets/notifications_card.dart';
import '../../../../core/widgets/app_search_appbar.dart';


class NotificationsSearchView extends StatelessWidget
{
  const NotificationsSearchView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomSearchAppBar(locationIcon: false,),
      backgroundColor: Theme.of(context).cardColor,
      body: Column(
        children:
        [
          AppSizes.size10.verticalSpace,
          const FriendRequestCard(),
          AppSizes.size14.verticalSpace,
          const DefaultNotificationCard(),
          // AppListviewBuilder(
          //   itemBuilder: itemBuilder,
          //   itemCount: itemCount,
          //   separatorBuilder: separatorBuilder
          // ),
        ],
      ),
    );
  }
}