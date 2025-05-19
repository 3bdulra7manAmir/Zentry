import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/datasources/interests_local_data_source.dart';
import '../../data/repository/interests_repository_impl.dart';
import '../../data/model/interest_category.dart';
import '../../domain/repository/interests_repository.dart';

// Provider for the interests repository
final interestsRepositoryProvider = Provider<InterestsRepository>((ref) {
  final dataSource = InterestsLocalDataSource();
  return InterestsRepositoryImpl(dataSource);
});

// Provider for all interest categories
final interestCategoriesProvider = FutureProvider<List<InterestCategory>>((ref) async {
  final repository = ref.watch(interestsRepositoryProvider);
  return repository.getInterestCategories();
});

// Provider for selected categories
final selectedCategoriesProvider = FutureProvider<List<InterestCategory>>((ref) async {
  final repository = ref.watch(interestsRepositoryProvider);
  return repository.getSelectedCategories();
});

// Provider to track the selection state
final isCategorySelectedProvider = StateProvider.family<bool, int>((ref, categoryId) => false);
