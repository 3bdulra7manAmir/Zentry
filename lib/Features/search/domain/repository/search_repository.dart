import '../entities/search_category.dart';

abstract class SearchRepository
{
  Future<List<SearchCategory>> getSearchCategories();
  Future<List<SearchCategory>> searchCategories(String query);
}
