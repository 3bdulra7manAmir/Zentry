import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/datasources/business_local_data_source.dart';
import '../../domain/entity/business.dart';

// Simple provider to load businesses from JSON
final businessesProvider = FutureProvider<List<Business>>((ref) async {
  final dataSource = BusinessLocalDataSource();
  return dataSource.getBusinesses();
});
