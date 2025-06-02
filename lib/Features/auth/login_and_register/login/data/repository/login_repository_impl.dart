import 'package:dartz/dartz.dart';
import '../../../../../../core/services/network/api_fetch_failure.dart';
import '../../domain/entity/login_entity.dart';
import '../../domain/repository/login_repository.dart';
import '../datasources/login_local_data_source.dart';

class LoginRepoImpl implements LoginRepo {
  final LoginLocalDataSource localDataSource;

  const LoginRepoImpl({required this.localDataSource});

  @override
  Future<Either<ApiFetchFailure, bool>> loginWithEmail(LoginEntity credentials) async {
    try {
      final result = await localDataSource.loginWithEmail(credentials);
      return Right(result);
    } catch (e) {
      return Left(ApiFetchFailure());
    }
  }

  @override
  Future<Either<ApiFetchFailure, bool>> loginWithPhone(LoginEntity credentials) async {
    try {
      final result = await localDataSource.loginWithPhone(credentials);
      return Right(result);
    } catch (e) {
      return Left(ApiFetchFailure());
    }
  }
}
