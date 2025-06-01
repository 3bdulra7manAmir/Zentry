import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../domain/usecases/products_items_usecase.dart';
import 'products_repository_provider.dart';

part 'products_items_usecase_provider.g.dart';

@riverpod
ProductsItemsUsecase productsItemsUsecase(ProductsItemsUsecaseRef ref) {
  final repository = ref.watch(productsRepositoryProvider);
  return ProductsItemsUsecase(repository);
}