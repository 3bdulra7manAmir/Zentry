import '../../domain/models/search_category.dart';
import '../../domain/repositories/search_repository.dart';
import '../datasources/search_local_data_source.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchLocalDataSource _localDataSource;

  SearchRepositoryImpl(this._localDataSource);

  @override
  Future<List<SearchCategory>> getSearchCategories() async {
    return await _localDataSource.getSearchCategories();
  }

  @override
  Future<List<SearchCategory>> searchCategories(String query) async {
    return await _localDataSource.searchCategories(query);
  }
}
