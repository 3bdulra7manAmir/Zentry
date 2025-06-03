import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/interests_local_data_source.dart';
import '../../data/repository/interests_repository_impl.dart';
import '../../data/model/interest_category.dart';
import '../../domain/repository/interests_repository.dart';

part 'interests_providers.g.dart';

@riverpod
InterestsRepository interestsRepository(Ref ref)
{
  final dataSource = InterestsLocalDataSource();
  return InterestsRepositoryImpl(dataSource);
}

@riverpod
Future<List<InterestCategory>> interestCategories(Ref ref)
{
  final repository = ref.watch(interestsRepositoryProvider);
  return repository.getInterestCategories();
}

@riverpod
Future<List<InterestCategory>> selectedCategories(Ref ref)
{
  final repository = ref.watch(interestsRepositoryProvider);
  return repository.getSelectedCategories();
}

@riverpod
class IsCategorySelected extends _$IsCategorySelected
{
  @override
  bool build(int categoryId) => false;
}
