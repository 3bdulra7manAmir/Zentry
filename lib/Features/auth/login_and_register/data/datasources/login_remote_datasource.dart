import '../../../../../core/services/network/api_service.dart';
import '../../../../../core/services/network/api_endpoints.dart';
import '../../domain/entity/login_entity.dart';
import '../model/login_model.dart';

abstract class LoginRemoteDatasource
{
  Future<List<LoginEntity>> fetchUserLoginData();
}

class LoginRemoteDatasourceImplementation extends LoginRemoteDatasource
{
  @override
  Future<List<LoginEntity>> fetchUserLoginData() async
  {
    var data = await AppApiService.instance.get(endPoint: AppApiEndpoints.loginDataEndPoint,);
    // List<LoginEntity> loginData = [];
    // for (var i in data)
    // {
    //   loginData.add(AppLoginModel.fromFJson(i)); 
    // }
    // return loginData;
    return data.map<LoginEntity>((i) => AppLoginModel.fromFJson(i)).toList();
    
  }
}
