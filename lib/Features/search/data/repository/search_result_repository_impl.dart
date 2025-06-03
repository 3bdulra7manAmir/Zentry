import '../../domain/entities/search_result.dart';
import '../../domain/repository/search_result_repository.dart';
import '../datasources/search_result_local_data_source.dart';

class SearchResultRepositoryImpl implements SearchResultRepository
{
  final SearchResultLocalDataSource _localDataSource;

  SearchResultRepositoryImpl(this._localDataSource);

  @override
  Future<List<SearchResult>> getSearchResults() async
  {
    return await _localDataSource.getSearchResults();
  }
}
