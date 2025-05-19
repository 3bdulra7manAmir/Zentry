import 'package:dartz/dartz.dart';
import '../../../../../core/services/network/api_fetch_failure.dart';
import '../../../../../core/utils/app_usecase.dart';
import '../entity/login_email_entity.dart';
import '../repository/login_email_repository.dart';

class LoginEmailUsecase extends AppUsecase
{
  final LoginEmailRepo loginEmailRepo;
  LoginEmailUsecase(this.loginEmailRepo);

  @override
  Future<Either<ApiFetchFailure, List<LoginEmailEntity>>> call([param]) async
  {
    try
    {
      final result = await loginEmailRepo.getEmails();
      return Right(result);
    }

    catch (e)
    {
      return Left(ApiFetchFailure()); //message: e.toString()
    }
  }
}