import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/datasources/search_local_data_source.dart';
import '../../../data/repository/search_repository_impl.dart';
import '../../../domain/entities/search_category.dart';
import '../../../domain/repository/search_repository.dart';

part 'search_controller.g.dart';

@riverpod
SearchRepository searchRepository(Ref ref)
{
  final dataSource = SearchLocalDataSource();
  return SearchRepositoryImpl(dataSource);
}

@riverpod
class SearchQuery extends _$SearchQuery
{
  @override
  String build() => '';
}

@riverpod
Future<List<SearchCategory>> searchResults(Ref ref) async
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
}


//Remover
@riverpod
class LocalSearchResults extends _$LocalSearchResults
{
  bool _initialized = false;

  @override
  List<SearchCategory> build()
  {
    return [];
  }

  void initialize(List<SearchCategory> initial)
  {
    if (!_initialized) {
      state = [...initial];
      _initialized = true;
    }
  }

  void removeAt(int index)
  {
    state = [...state]..removeAt(index);
  }

  void clear()
  {
    state = [];
  }
}

