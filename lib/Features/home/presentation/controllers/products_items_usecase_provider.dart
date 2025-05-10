import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/repo/products_items_repo.dart';
import '../../domain/usecases/products_items_usecase.dart';

part 'products_items_usecase_provider.g.dart';

@riverpod
ProductsItemsUsecase productsItemsUsecase(ProductsItemsUsecaseRef ref)
{
  return ProductsItemsUsecase(ProductsItemsRepoImpl());
}