import '../model/interest_category.dart';
import '../../domain/repository/interests_repository.dart';
import '../datasources/interests_local_data_source.dart';

class InterestsRepositoryImpl implements InterestsRepository {
  final InterestsLocalDataSource _localDataSource;
  final List<int> _selectedCategories = [];

  InterestsRepositoryImpl(this._localDataSource);

  @override
  Future<List<InterestCategory>> getInterestCategories() async {
    return await _localDataSource.getInterestCategories();
  }

  @override
  Future<void> selectCategory(int categoryId) async {
    if (!_selectedCategories.contains(categoryId)) {
      _selectedCategories.add(categoryId);
    }
  }

  @override
  Future<void> unselectCategory(int categoryId) async {
    _selectedCategories.remove(categoryId);
  }

  @override
  Future<List<InterestCategory>> getSelectedCategories() async {
    final allCategories = await getInterestCategories();
    return allCategories.where((category) => 
      _selectedCategories.contains(category.id)
    ).toList();
  }
}
