import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/datasources/search_local_data_source.dart';
import '../../../data/repository/search_repository_impl.dart';
import '../../../domain/entities/search_category.dart';
import '../../../domain/repository/search_repository.dart';

// Provider for the search repository
final searchRepositoryProvider = Provider<SearchRepository>((ref)
{
  final dataSource = SearchLocalDataSource();
  return SearchRepositoryImpl(dataSource);
});

// Provider for search query
final searchQueryProvider = StateProvider<String>((ref) => '');

// Provider for search results
final searchResultsProvider = FutureProvider<List<SearchCategory>>((ref) async
{
  final repository = ref.watch(searchRepositoryProvider);
  final query = ref.watch(searchQueryProvider);
  if (query.isEmpty)
  {
    return repository.getSearchCategories();
  }
  else
  {
    return repository.searchCategories(query);
  }
});
