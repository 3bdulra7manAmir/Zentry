import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'join_groups_usecase_controller.dart';

part 'join_groups_items_controller.g.dart';

@riverpod
Future<dynamic> joinGroupsItems(Ref ref) async
{
  final usecase = ref.watch(joinGroupsUseCaseProvider);
  final result = await usecase.call();
  return result;
}
