import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repository/join_groups_repo_impl.dart';
import 'join_groups_local_data_source_provider.dart';

final joinGroupsRepositoryProvider = Provider<JoinGroupsRepoImpl>((ref) {
  final localDataSource = ref.watch(joinGroupsLocalDataSourceProvider);
  return JoinGroupsRepoImpl(localDataSource: localDataSource);
});
