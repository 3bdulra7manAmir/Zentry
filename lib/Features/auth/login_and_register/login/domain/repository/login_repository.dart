import 'package:dartz/dartz.dart';
import '../../../../../../core/services/network/api_fetch_failure.dart';
import '../entity/login_entity.dart';

abstract class LoginRepo {
  Future<Either<ApiFetchFailure, bool>> loginWithEmail(LoginEntity credentials);
  Future<Either<ApiFetchFailure, bool>> loginWithPhone(LoginEntity credentials);
}
