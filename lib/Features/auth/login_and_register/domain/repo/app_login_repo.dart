import 'package:dartz/dartz.dart';
import '../../../../../core/utils/errors/api_fetch_failure.dart';
import '../entity/app_login_entity.dart';

abstract class AppLoginRepo
{
  Future < Either<ApiFetchFailure, List<AppLoginEntity>> > fetchUserLoginData();
}