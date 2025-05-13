import '../models/interest_category.dart';

abstract class InterestsRepository {
  Future<List<InterestCategory>> getInterestCategories();
  Future<void> selectCategory(int categoryId);
  Future<void> unselectCategory(int categoryId);
  Future<List<InterestCategory>> getSelectedCategories();
}
