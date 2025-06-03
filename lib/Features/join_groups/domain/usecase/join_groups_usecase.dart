import '../repository/join_groups_repo.dart';
import '../entities/join_groups_entity.dart';

class JoinGroupsUseCase
{
  final JoinGroupsRepo repository;
  JoinGroupsUseCase(this.repository);

  Future<List<JoinGroupsEntity>> call() async
  {
    return await repository.getJoinGroupsRepo();
  }
}
