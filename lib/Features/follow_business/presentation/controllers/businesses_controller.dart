import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/business_local_data_source.dart';
import '../../domain/entity/business_entity.dart';

part 'businesses_controller.g.dart';

@riverpod
Future<List<Business>> businesses(Ref ref)
{
  final dataSource = BusinessLocalDataSource();
  return dataSource.getBusinesses();
}
