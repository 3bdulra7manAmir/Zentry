import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/repository/products_repository_impl.dart';
import '../../../domain/repository/products_repository.dart';
import 'products_local_datasource_provider.dart';

final productsRepositoryProvider = Provider<ProductsRepo>((ref) {
  final localDataSource = ref.watch(productsLocalDataSourceProvider);
  return ProductsRepoImpl(localDataSource: localDataSource);
});
