import 'package:dartz/dartz.dart';
import '../../../../../core/utils/errors/api_fetch_failure.dart';
import '../entity/app_form_entity.dart';

abstract class AppFormRepo {
  Future<Either<ApiFetchFailure, List<AppFormEntity>>> fetchAppFormData();
}
