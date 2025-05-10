import 'package:dartz/dartz.dart';
import '../../../../core/utils/app_usecase.dart';
import '../../../../core/utils/errors/api_fetch_failure.dart';
import '../entity/products_items_entity.dart';
import '../repo/products_items_repo.dart';

class ProductsItemsUsecase extends AppUsecase
{
  final ProductsItemsRepo productsItemsRepo;
  ProductsItemsUsecase(this.productsItemsRepo);

  @override
  Future<Either<ApiFetchFailure, List<ProductsItemsEntity>>> call([param]) async
  {
    try
    {
      final result = await productsItemsRepo.getProductsItems();
      return Right(result);
    }
    catch (e)
    {
      return Left(ApiFetchFailure()); //message: e.toString()
    }
  }
}