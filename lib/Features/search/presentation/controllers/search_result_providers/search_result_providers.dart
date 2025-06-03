import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/datasources/search_result_local_data_source.dart';
import '../../../data/repository/search_result_repository_impl.dart';
import '../../../domain/entities/search_result.dart';
import '../../../domain/repository/search_result_repository.dart';

part 'search_result_providers.g.dart';

@riverpod
SearchResultLocalDataSource searchResultDataSource(Ref ref)
{
  return SearchResultLocalDataSource();
}

@riverpod
SearchResultRepository searchResultRepository(Ref ref)
{
  final dataSource = ref.watch(searchResultDataSourceProvider);
  return SearchResultRepositoryImpl(dataSource);
}

@riverpod
Future<List<SearchResult>> searchResultsList(Ref ref)
{
  final repository = ref.watch(searchResultRepositoryProvider);
  return repository.getSearchResults();
}
