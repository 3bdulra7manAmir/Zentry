import 'package:dartz/dartz.dart';
import '../../../../../core/utils/app_usecase.dart';
import '../../../../../core/utils/errors/api_fetch_failure.dart';
import '../repo/login_repo.dart';

class DomainLoginUsecase extends AppUsecase
{

  final DomainLoginRepo appLoginRepo;
  DomainLoginUsecase(this.appLoginRepo);

  @override
  Future<Either<ApiFetchFailure, dynamic>> call([param])
  {
    return appLoginRepo.fetchUserLoginData();
  }
}