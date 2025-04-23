import '../../../../../core/services/database/hive/hive_database.dart';
import '../../domain/entity/login_entity.dart';


abstract class LoginLocalDatasource
{
  List<LoginEntity> fetchUserLoginData();
}

class LoginLocalDatasourceImplementation extends LoginLocalDatasource
{
  @override
  List<LoginEntity> fetchUserLoginData()
  {
    var dataBox = HiveLocalSourceDatabase.instance.loginDb;
    return dataBox.values.toList();
  }

}