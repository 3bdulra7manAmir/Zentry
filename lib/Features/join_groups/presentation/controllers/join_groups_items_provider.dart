import 'get_join_groups_usecase_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final joinGroupsItemsProvider = FutureProvider((ref) async {
  final usecase = ref.watch(getJoinGroupsUseCaseProvider);
  final result = await usecase.call();
  return result;
});
