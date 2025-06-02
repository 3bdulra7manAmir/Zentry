import 'package:dartz/dartz.dart';
import '../../../../../../core/services/network/api_fetch_failure.dart';
import '../../../../../../core/utils/app_usecase.dart';
import '../entity/login_entity.dart';
import '../repository/login_repository.dart';

class EmailLoginUseCase extends AppUsecase<bool, LoginEntity> {
  final LoginRepo loginRepo;
  
  EmailLoginUseCase(this.loginRepo);

  @override
  Future<Either<ApiFetchFailure, bool>> call([LoginEntity? param]) async {
    try {
      if (param == null) throw Exception('Login credentials required');
      final result = await loginRepo.loginWithEmail(param);
      return result;
    } catch (e) {
      return Left(ApiFetchFailure());
    }
  }
}

class PhoneLoginUseCase extends AppUsecase<bool, LoginEntity> {
  final LoginRepo loginRepo;
  
  PhoneLoginUseCase(this.loginRepo);

  @override
  Future<Either<ApiFetchFailure, bool>> call([LoginEntity? param]) async {
    try {
      if (param == null) throw Exception('Login credentials required');
      final result = await loginRepo.loginWithPhone(param);
      return result;
    } catch (e) {
      return Left(ApiFetchFailure());
    }
  }
}
