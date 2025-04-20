import 'package:dartz/dartz.dart';

import '../../../../../core/utils/errors/api_fetch_failure.dart';
import '../model/login_model.dart';

abstract class DataLoginRepo
{
  Future< Either<ApiFetchFailure, List<AppLoginModel>> > fetchUserLoginData();
}