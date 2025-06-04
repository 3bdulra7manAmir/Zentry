import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repository/join_groups_repo_impl.dart';
import 'join_groups_local_data_source_controller.dart';

part 'join_groups_repository_controller.g.dart';

@riverpod
JoinGroupsRepoImpl joinGroupsRepository(Ref ref)
{
  final localDataSource = ref.watch(joinGroupsLocalDataSourceProvider);
  return JoinGroupsRepoImpl(localDataSource: localDataSource);
}
