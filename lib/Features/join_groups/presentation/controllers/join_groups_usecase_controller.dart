import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/usecase/join_groups_usecase.dart';
import 'join_groups_repository_controller.dart';

part 'join_groups_usecase_controller.g.dart';

@riverpod
JoinGroupsUseCase joinGroupsUseCase(Ref ref)
{
  final repository = ref.watch(joinGroupsRepositoryProvider);
  return JoinGroupsUseCase(repository);
}
