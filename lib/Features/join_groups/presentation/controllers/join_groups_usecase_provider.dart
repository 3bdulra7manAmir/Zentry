import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/usecase/join_groups_usecase.dart';
import 'join_groups_repository_provider.dart';

part 'join_groups_usecase_provider.g.dart';

@riverpod
JoinGroupsUseCase joinGroupsUseCase(JoinGroupsUseCaseRef ref)
{
  final repository = ref.watch(joinGroupsRepositoryProvider);
  return JoinGroupsUseCase(repository);
}
