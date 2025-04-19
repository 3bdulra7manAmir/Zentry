import 'package:dartz/dartz.dart';
import '../../../../../core/utils/app_usecase.dart';
import '../../../../../core/utils/errors/api_fetch_failure.dart';
import '../repo/app_login_repo.dart';

class AppLoginUsecase extends AppUsecase
{
  final AppLoginRepo appLoginRepo;
  AppLoginUsecase(this.appLoginRepo);

  @override
  Future<Either<ApiFetchFailure, dynamic>> call([param])
  {
    return appLoginRepo.fetchUserLoginData();
  }

}