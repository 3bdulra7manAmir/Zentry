import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repository/join_groups_repo_impl.dart';
import 'join_groups_local_data_source_provider.dart';

part 'join_groups_repository_provider.g.dart';

@riverpod
JoinGroupsRepoImpl joinGroupsRepository(JoinGroupsRepositoryRef ref)
{
  final localDataSource = ref.watch(joinGroupsLocalDataSourceProvider);
  return JoinGroupsRepoImpl(localDataSource: localDataSource);
}
