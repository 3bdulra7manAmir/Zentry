import 'package:dartz/dartz.dart';
import '../../../../../core/utils/errors/api_fetch_failure.dart';
import '../entity/app_login_entity.dart';

abstract class DomainLoginRepo
{
  DomainLoginRepo._();

  Future<Either<ApiFetchFailure, List<LoginEntity>>> fetchUserLoginData();
}
