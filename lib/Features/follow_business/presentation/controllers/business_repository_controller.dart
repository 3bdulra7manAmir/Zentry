import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_app/features/follow_business/presentation/controllers/businesses_local_data_source_controller.dart';

import '../../data/repository/business_repository_impl.dart';
import '../../domain/repository/business_repository.dart';


part 'business_repository_controller.g.dart';

@riverpod
BusinessRepository businessRepository(Ref ref) {
  final localDataSource = ref.watch(businessLocalDataSourceProvider);
  return BusinessRepositoryImpl(localDataSource);
}
