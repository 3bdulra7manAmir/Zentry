import '../entity/products_items_entity.dart';

abstract class ProductsRepo
{
  Future<List<ProductsItemsEntity>> getProducts();
}
