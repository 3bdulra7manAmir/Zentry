import 'package:dartz/dartz.dart';
import '../../../../../core/utils/app_usecase.dart';
import '../../../../../core/utils/errors/api_fetch_failure.dart';
import '../repo/app_form_repo.dart';

class AppFormUsecase extends AppUsecase {
  final AppFormRepo appFormRepo;
  AppFormUsecase(this.appFormRepo);

  @override
  Future<Either<ApiFetchFailure, dynamic>> call([param]) {
    return appFormRepo.fetchAppFormData();
  }
}
