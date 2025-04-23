import 'package:hive/hive.dart';

import '../../../../../core/services/database/hive/hive_database.dart';
import '../../../../../core/services/network/api_service.dart';
import '../../../../../core/services/network/api_endpoints.dart';
import '../../domain/entity/login_entity.dart';
import '../model/login_model.dart';

abstract class LoginRemoteDatasource
{
  Future<List<LoginEntity>> fetchUserLoginData();
  Future<List<LoginEntity>> apiDataRequest();
  Future<void> apiDataSaverInDataBase(List<LoginEntity> dataHolder, Box<LoginEntity> loginDataSaverInDataBase);
}

class LoginRemoteDatasourceImplementation extends LoginRemoteDatasource
{
  @override
  Future<List<LoginEntity>> fetchUserLoginData() async
  {
    List<LoginEntity> dataHolder = await apiDataRequest();
    await apiDataSaverInDataBase(dataHolder, HiveLocalSourceDatabase.instance.loginDb);
    return dataHolder;
  }

  @override
  Future<List<LoginEntity>> apiDataRequest() async
  {
    var apiResponse = await AppApiService.instance.get(endPoint: AppApiEndpoints.loginDataEndPoint,);
    List<LoginEntity> dataHolder = [];
    for (var i in apiResponse)
    {
      dataHolder.add(AppLoginModel.fromFJson(i)); 
    }
    return dataHolder;
  }

  @override
  Future<void> apiDataSaverInDataBase(List<LoginEntity> dataHolder, Box<LoginEntity> loginDataSaverInDataBase) async
  {
    var loginDataSaverInDataBase = HiveLocalSourceDatabase.instance.loginDb;
    await loginDataSaverInDataBase.addAll(dataHolder);
  }
}