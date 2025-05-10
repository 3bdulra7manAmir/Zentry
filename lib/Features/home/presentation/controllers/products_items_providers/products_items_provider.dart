import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../domain/entity/products_items_entity.dart';
import 'products_items_usecase_provider.dart';

part 'products_items_provider.g.dart';

@riverpod
Future<List<ProductsItemsEntity>> productsItems(ProductsItemsRef ref) async
{
  final usecase = ref.watch(productsItemsUsecaseProvider);
  final result = await usecase.call();
  return result.fold(
    (failure) => throw failure,
    (products) => products,
  );
}
