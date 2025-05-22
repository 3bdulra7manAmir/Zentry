import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/app_providers.dart';
import '../../../../core/widgets/app_listview_builder.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children:
          [
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