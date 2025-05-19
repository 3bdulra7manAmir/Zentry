import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/datasources/search_result_local_data_source.dart';
import '../../../data/repository/search_result_repository_impl.dart';
import '../../../domain/entities/search_result.dart';
import '../../../domain/repository/search_result_repository.dart';

// Provider for search result data source
final searchResultDataSourceProvider = Provider<SearchResultLocalDataSource>((ref) {
  return SearchResultLocalDataSource();
});

// Provider for search result repository
final searchResultRepositoryProvider = Provider<SearchResultRepository>((ref) {
  final dataSource = ref.watch(searchResultDataSourceProvider);
  return SearchResultRepositoryImpl(dataSource);
});

// Provider for search results
final searchResultsListProvider = FutureProvider<List<SearchResult>>((ref) async {
  final repository = ref.watch(searchResultRepositoryProvider);
  return repository.getSearchResults();
});
