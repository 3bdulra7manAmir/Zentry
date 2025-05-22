import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/core/widgets/app_circular_indicator.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../../core/helpers/app_providers.dart';
import '../widgets/join_groups_card.dart';
import '../widgets/join_groups_gridbuilder.dart';

class JoinGroupsScreen extends ConsumerWidget
{
  const JoinGroupsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return provider.joinGroupsAsyncValue.when(
      data: (groups) => GridViewBuilder(
        itemCount: groups.length,
        itemBuilder: (context, index) => JoinGroupsCard(group: groups[index]),
      ),
      loading: () => const Center(child: AppCircularIndicator()),
      error: (error, stackTrace) => Center(child: Text('${AppLocalizations.of(context).error}: $error')),
    );
  }
}