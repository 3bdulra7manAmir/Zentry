import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/usecase/get_join_groups_usecase.dart';
import 'join_groups_repository_provider.dart';

part 'get_join_groups_usecase_provider.g.dart';

@riverpod
GetJoinGroupsUseCase getJoinGroupsUseCase(GetJoinGroupsUseCaseRef ref) {
  final repository = ref.watch(joinGroupsRepositoryProvider);
  return GetJoinGroupsUseCase(repository);
}
