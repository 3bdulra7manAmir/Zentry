import 'package:dartz/dartz.dart';
import '../../../../../core/services/network/api_fetch_failure.dart';
import '../entity/app_form_entity.dart';

abstract class AppFormRepo
{
  Future<Either<ApiFetchFailure, List<AppFormEntity>>> fetchAppFormData();
}
