import 'package:dartz/dartz.dart';
import '../../../../../core/utils/app_usecase.dart';
import '../../../../../core/utils/errors/api_fetch_failure.dart';
import '../../domain/repo/app_login_repo.dart';

class DataLoginUsecase extends AppUsecase
{
  final DomainLoginRepo domainLoginRepo;
  DataLoginUsecase(this.domainLoginRepo);

  @override
  Future<Either<ApiFetchFailure, dynamic>> call([param])
  {
    return domainLoginRepo.fetchUserLoginData();
  }

}