// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchResultDataSourceHash() =>
    r'f49f51e0fca3a7f4bbf0dd0ea53304639d3ff718';

/// See also [searchResultDataSource].
@ProviderFor(searchResultDataSource)
final searchResultDataSourceProvider =
    AutoDisposeProvider<SearchResultLocalDataSource>.internal(
  searchResultDataSource,
  name: r'searchResultDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchResultDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SearchResultDataSourceRef
    = AutoDisposeProviderRef<SearchResultLocalDataSource>;
String _$searchResultRepositoryHash() =>
    r'638cd12bb7d0e70311cb4668def0e764726061a1';

/// See also [searchResultRepository].
@ProviderFor(searchResultRepository)
final searchResultRepositoryProvider =
    AutoDisposeProvider<SearchResultRepository>.internal(
  searchResultRepository,
  name: r'searchResultRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchResultRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SearchResultRepositoryRef
    = AutoDisposeProviderRef<SearchResultRepository>;
String _$searchResultsListHash() => r'995c0676f167d2ac94d6aa1fd2f007a63af94a1a';

/// See also [searchResultsList].
@ProviderFor(searchResultsList)
final searchResultsListProvider =
    AutoDisposeFutureProvider<List<SearchResult>>.internal(
  searchResultsList,
  name: r'searchResultsListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchResultsListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SearchResultsListRef = AutoDisposeFutureProviderRef<List<SearchResult>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
