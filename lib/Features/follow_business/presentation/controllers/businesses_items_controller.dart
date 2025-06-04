import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entity/business_entity.dart';
import 'business_usecase_controller.dart';


part 'businesses_items_controller.g.dart';

@riverpod
Future<List<BusinessEntity>> businessItems(Ref ref) async
{
  final usecase = ref.watch(businessUsecaseProvider);
  final result = await usecase.call();
  return result.fold(
    (failure) => throw failure,
    (businesses) => businesses,
  );
}
