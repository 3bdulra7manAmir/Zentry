import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/datasources/search_result_local_data_source.dart';
import '../../../data/repository/search_result_repository_impl.dart';
import '../../../domain/entities/search_result.dart';
import '../../../domain/repository/search_result_repository.dart';

part 'search_result_providers.g.dart';

@riverpod
SearchResultLocalDataSource searchResultDataSource(SearchResultDataSourceRef ref)
{
  return SearchResultLocalDataSource();
}

@riverpod
SearchResultRepository searchResultRepository(SearchResultRepositoryRef ref)
{
  final dataSource = ref.watch(searchResultDataSourceProvider);
  return SearchResultRepositoryImpl(dataSource);
}

@riverpod
Future<List<SearchResult>> searchResultsList(SearchResultsListRef ref)
{
  final repository = ref.watch(searchResultRepositoryProvider);
  return repository.getSearchResults();
}
