import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/repository/products_repository_impl.dart';
import '../../../domain/repository/products_repository.dart';
import 'products_local_datasource_controller.dart';

part 'products_repository_controller.g.dart';

@riverpod
ProductsRepo productsRepository(Ref ref)
{
  final localDataSource = ref.watch(productsLocalDataSourceProvider);
  return ProductsRepoImpl(localDataSource: localDataSource);
}
