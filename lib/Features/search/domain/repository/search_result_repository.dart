import '../entities/search_result.dart';

abstract class SearchResultRepository {
  Future<List<SearchResult>> getSearchResults();
}
