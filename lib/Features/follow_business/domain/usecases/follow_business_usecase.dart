import 'package:dartz/dartz.dart';
import '../../../../core/utils/app_usecase.dart';
import '../../../../core/services/network/api_fetch_failure.dart';
import '../entity/business_entity.dart';
import '../repository/business_repository.dart';


class BusinessUsecase extends AppUsecase
{
  final BusinessRepository businessRepo;
  BusinessUsecase(this.businessRepo);

  @override
  Future<Either<ApiFetchFailure, List<BusinessEntity>>> call([param]) async
  {
    try
    {
      final result = await businessRepo.getBusinesses();
      return Right(result);
    }

    catch (e)
    {
      return Left(ApiFetchFailure()); //message: e.toString()
    }
  }
}