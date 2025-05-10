import '../../domain/entity/products_items_entity.dart';
import '../data_sources/products_local_data_source.dart';
import '../../domain/repository/products_repository.dart';

class ProductsRepoImpl implements ProductsRepo
{
  final ProductsLocalDataSource localDataSource;

  ProductsRepoImpl({required this.localDataSource});

  @override
  Future<List<ProductsItemsEntity>> getProducts() async
  {
    try
    {
      return await localDataSource.getProducts();
    }
    catch (e)
    {
      throw Exception('Failed to get products: $e');
    }
  }
}
