import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_app/features/follow_business/presentation/controllers/business_repository_controller.dart';

import '../../domain/usecases/follow_business_usecase.dart';


part 'business_usecase_controller.g.dart';

@riverpod
BusinessUsecase businessUsecase(Ref ref) {
  final repository = ref.watch(businessRepositoryProvider);
  return BusinessUsecase(repository);
}
