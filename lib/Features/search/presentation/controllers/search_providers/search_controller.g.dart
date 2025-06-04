// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchRepositoryHash() => r'201ce5a79d3679d472abc4831ad69d31523d4f1f';

/// See also [searchRepository].
@ProviderFor(searchRepository)
final searchRepositoryProvider = AutoDisposeProvider<SearchRepository>.internal(
  searchRepository,
  name: r'searchRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SearchRepositoryRef = AutoDisposeProviderRef<SearchRepository>;
String _$searchResultsHash() => r'42f886292022f80205055f3537e8f2dab20fd7f9';

/// See also [searchResults].
@ProviderFor(searchResults)
final searchResultsProvider =
    AutoDisposeFutureProvider<List<SearchCategory>>.internal(
  searchResults,
  name: r'searchResultsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchResultsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SearchResultsRef = AutoDisposeFutureProviderRef<List<SearchCategory>>;
String _$searchQueryHash() => r'ce3be9c2b333fa07564684734de457031f91ca8b';

/// See also [SearchQuery].
@ProviderFor(SearchQuery)
final searchQueryProvider =
    AutoDisposeNotifierProvider<SearchQuery, String>.internal(
  SearchQuery.new,
  name: r'searchQueryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$searchQueryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SearchQuery = AutoDisposeNotifier<String>;
String _$localSearchResultsHash() =>
    r'060f18a2e1e75639a46388d8edb10d53f25d2876';

/// See also [LocalSearchResults].
@ProviderFor(LocalSearchResults)
final localSearchResultsProvider = AutoDisposeNotifierProvider<
    LocalSearchResults, List<SearchCategory>>.internal(
  LocalSearchResults.new,
  name: r'localSearchResultsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localSearchResultsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LocalSearchResults = AutoDisposeNotifier<List<SearchCategory>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
