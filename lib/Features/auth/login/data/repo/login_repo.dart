import 'package:dartz/dartz.dart';
import '../../../../../core/services/network/api_fetch_failure.dart';
import '../../domain/entity/login_entity.dart';
import '../datasources/login_local_datasource.dart';
import '../datasources/login_remote_datasource.dart';

abstract class DataLoginRepo
{
  Future< Either<ApiFetchFailure, List<LoginEntity>> > fetchUserLoginData();
}

class DataLoginRepoImplementation extends DataLoginRepo
{
  final LoginRemoteDatasource remoteDatasource;
  final LoginLocalDatasource localDatasource;

  DataLoginRepoImplementation(this.remoteDatasource, this.localDatasource);

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