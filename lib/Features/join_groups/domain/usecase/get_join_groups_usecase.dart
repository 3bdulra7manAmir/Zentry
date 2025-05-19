import '../repository/join_groups_repo.dart';
import '../entities/join_groups_entity.dart';

class GetJoinGroupsUseCase {
  final JoinGroupsRepo repository;
  GetJoinGroupsUseCase(this.repository);

  Future<List<JoinGroupsEntity>> call() async {
    return await repository.getJoinGroupsRepo();
  }
}
