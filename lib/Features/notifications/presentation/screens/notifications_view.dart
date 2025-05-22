import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../config/themes/color_system/app_colors.dart';
import '../../../../config/themes/font_system/font_weights.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/helpers/app_providers.dart';
import '../../../../core/widgets/app_appbar.dart';
import '../../../../core/widgets/app_listview_builder.dart';
import '../widgets/friend_request_card.dart';
import '../widgets/notifications_card.dart';

class NotificationsView extends ConsumerWidget
{
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: Text(AppLocalizations.of(context).notification, style: AppStyles.textStyle18(
          fontColor: AppColors.color.kBlack003,
          fontWeight: AppFontWeights.regularWeight,),
        ),
        barActions: [Image.asset(AppAssets.iconsPNG.notificationSearchDark)],
        barActionsPadding: AppPadding.endOnly20,
      ),
      backgroundColor: Theme.of(context).cardColor,
      body: SingleChildScrollView(
        child: Column(
          children:
          [
            AppSizes.size10.verticalSpace,
            const FriendRequestCard(),
            AppSizes.size14.verticalSpace,
            Consumer(
              builder: (context, ref, _)
              {
                final provider = AppProvidersProvider(ref, context);
                return provider.notificationsAsyncValue.when(
                  data: (notifications) => AppListviewBuilder(
                    itemBuilder: (context, index) => DefaultNotificationCard(notification: notifications[index],),
                    itemCount: notifications.length,
                    separatorBuilder: (context, index) => AppSizes.size14.verticalSpace,
                  ),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (error, stackTrace) => Center(child: Text('${AppLocalizations.of(context).error}: $error'),),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}