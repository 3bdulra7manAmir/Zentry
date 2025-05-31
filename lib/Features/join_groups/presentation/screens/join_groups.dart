import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/helpers/app_providers.dart';
import '../../../../core/widgets/app_circular_indicator.dart';
import '../../../../core/widgets/app_lists/app_gridview_builder.dart';
import '../widgets/join_groups_card.dart';


class JoinGroupsScreen extends ConsumerWidget
{
  const JoinGroupsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return provider.joinGroupsAsyncValue.when(
      data: (groups) => AppGridbuilder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12.0,
        crossAxisSpacing: 12.0,
        childAspectRatio: 1.4,
      ),
        padding: AppPadding.topOnly20,
        itemCount: groups.length,
        itemBuilder: (context, index) => JoinGroupsCard(group: groups[index]),
      ),
      loading: () => const Center(child: AppCircularIndicator()),
      error: (error, stackTrace) => Center(child: Text('${AppLocalizations.of(context).error}: $error')),
    );
  }
}