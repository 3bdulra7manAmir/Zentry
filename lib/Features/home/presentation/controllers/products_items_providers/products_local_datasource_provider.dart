import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/data_sources/products_local_data_source.dart';

final productsLocalDataSourceProvider = Provider<ProductsLocalDataSource>((ref) {return ProductsLocalDataSourceImpl();});
