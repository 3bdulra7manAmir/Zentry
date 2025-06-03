import '../../domain/repository/join_groups_repo.dart';
import '../../domain/entities/join_groups_entity.dart';
import '../datasources/local_data_source.dart';

class JoinGroupsRepoImpl implements JoinGroupsRepo
{
  final JoinGroupsLocalDataSource localDataSource;
  const JoinGroupsRepoImpl({required this.localDataSource});

  @override
  Future<List<JoinGroupsEntity>> getJoinGroupsRepo() async
  {
    try
    {
      return await localDataSource.getJoinGroupsRepo();
    }
    catch (e)
    {
      throw Exception('Failed to get join groups: $e');
    }
  }
}
