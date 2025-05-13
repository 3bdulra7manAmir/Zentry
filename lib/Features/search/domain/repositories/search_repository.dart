import '../models/search_category.dart';

// Repository interface for search feature
abstract class SearchRepository {
  Future<List<SearchCategory>> getSearchCategories();
  Future<List<SearchCategory>> searchCategories(String query);
}
