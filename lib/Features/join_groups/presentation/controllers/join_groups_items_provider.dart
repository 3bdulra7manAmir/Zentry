import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'get_join_groups_usecase_provider.dart';

part 'join_groups_items_provider.g.dart';

@riverpod
Future<dynamic> joinGroupsItems(JoinGroupsItemsRef ref) async {
  final usecase = ref.watch(getJoinGroupsUseCaseProvider);
  final result = await usecase.call();
  return result;
}
