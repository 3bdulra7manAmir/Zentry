import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/business_local_data_source.dart';
import '../../domain/entity/business.dart';

part 'businesses_controller.g.dart';

@riverpod
Future<List<Business>> businesses(BusinessesRef ref)
{
  final dataSource = BusinessLocalDataSource();
  return dataSource.getBusinesses();
}
