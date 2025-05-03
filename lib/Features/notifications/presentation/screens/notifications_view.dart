import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/features/notifications/presentation/widgets/notifications_card.dart';
import '../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/app_appbar.dart';
import '../widgets/friend_request_card.dart';


class NotificationsView extends StatelessWidget
{
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: Text("Notification", style: AppStyles.textStyle18(textColor: AppColors.color.kOctonarySemiBlackText, fontWeight: AppFontWeights.regularWeight,),),
        barActions: [Image.asset(AppAssets.iconsPNG.searchDarkPNG)],
        barActionsPadding: AppPadding.kSearchIconPadding,
      ),
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