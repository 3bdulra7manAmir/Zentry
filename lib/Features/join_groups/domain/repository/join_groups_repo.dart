
import '../entities/join_groups_entity.dart';
abstract class JoinGroupsRepo
{
  Future<List<JoinGroupsEntity>> getJoinGroupsRepo();
}
