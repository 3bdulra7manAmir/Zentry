import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../controllers/join_groups_items_provider.dart';
import '../widgets/join_groups_card.dart';
import '../widgets/join_groups_gridbuilder.dart';

class JoinGroupsScreen extends ConsumerWidget
{
  const JoinGroupsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final joinGroupsAsyncValue = ref.watch(joinGroupsItemsProvider);
    return joinGroupsAsyncValue.when(
      data: (groups) => GridViewBuilder(
        itemCount: groups.length,
        itemBuilder: (context, index) => JoinGroupsCard(group: groups[index]),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('${AppLocalizations.of(context).error}: $error')),
    );
  }
}