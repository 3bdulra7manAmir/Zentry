import 'package:dartz/dartz.dart';
import '../../../../core/utils/app_usecase.dart';
import '../../../../core/utils/errors/api_fetch_failure.dart';
import '../entity/products_items_entity.dart';
import '../repository/products_repository.dart';

class ProductsItemsUsecase extends AppUsecase
{
  final ProductsRepo productsItemsRepo;
  ProductsItemsUsecase(this.productsItemsRepo);

  @override
  Future<Either<ApiFetchFailure, List<ProductsItemsEntity>>> call([param]) async
  {
    try
    {
      final result = await productsItemsRepo.getProducts();
      return Right(result);
    }
    catch (e)
    {
      return Left(ApiFetchFailure()); //message: e.toString()
    }
  }
}