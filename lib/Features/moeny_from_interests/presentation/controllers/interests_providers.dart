import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/interests_local_data_source.dart';
import '../../data/repository/interests_repository_impl.dart';
import '../../data/model/interest_category.dart';
import '../../domain/repository/interests_repository.dart';

part 'interests_providers.g.dart';

@riverpod
InterestsRepository interestsRepository(InterestsRepositoryRef ref)
{
  final dataSource = InterestsLocalDataSource();
  return InterestsRepositoryImpl(dataSource);
}

@riverpod
Future<List<InterestCategory>> interestCategories(InterestCategoriesRef ref)
{
  final repository = ref.watch(interestsRepositoryProvider);
  return repository.getInterestCategories();
}

@riverpod
Future<List<InterestCategory>> selectedCategories(SelectedCategoriesRef ref)
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
