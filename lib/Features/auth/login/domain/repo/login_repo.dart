import 'package:dartz/dartz.dart';
import '../../../../../core/services/network/api_fetch_failure.dart';
import '../../data/datasources/login_local_datasource.dart';
import '../../data/datasources/login_remote_datasource.dart';
import '../entity/login_entity.dart';

abstract class DomainLoginRepo
{
  Future<Either<ApiFetchFailure, List<LoginEntity>>> fetchUserLoginData();
}

class DomainLoginRepoImplementation implements  DomainLoginRepo
{
  final LoginRemoteDatasource remoteDatasource;
  final LoginLocalDatasource localDatasource;

  DomainLoginRepoImplementation(this.remoteDatasource, this.localDatasource);

  @override
  Future<Either<ApiFetchFailure, List<LoginEntity>>> fetchUserLoginData() async
  {
    try
    {
      var localLoginData = localDatasource.fetchUserLoginData();
      if(localLoginData.isNotEmpty)
      {
        return right(localLoginData);
      }
      else
      {
        var remoteLoginData = remoteDatasource.fetchUserLoginData();
        return right(await remoteLoginData);
      }
    }

    catch (err)
    {
      return left(ApiFetchFailure());
    }
  }
  
}