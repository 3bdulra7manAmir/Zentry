import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/local_data_source.dart';

part 'join_groups_local_data_source_provider.g.dart';

@riverpod
JoinGroupsLocalDataSource joinGroupsLocalDataSource(JoinGroupsLocalDataSourceRef ref)
{
  return JoinGroupsLocalDataSource();
}
