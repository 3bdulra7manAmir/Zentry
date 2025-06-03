import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/data_sources/products_local_data_source.dart';

part 'products_local_datasource_provider.g.dart';

@riverpod
ProductsLocalDataSource productsLocalDataSource(Ref ref)
{
  return ProductsLocalDataSourceImpl();
}
