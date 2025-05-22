// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginLocalDataSourceHash() =>
    r'1d8db381dc8b4fdd7160f2b95f30a1aabb03d7c5';

/// See also [loginLocalDataSource].
@ProviderFor(loginLocalDataSource)
final loginLocalDataSourceProvider =
    AutoDisposeProvider<LoginLocalDataSource>.internal(
  loginLocalDataSource,
  name: r'loginLocalDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loginLocalDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LoginLocalDataSourceRef = AutoDisposeProviderRef<LoginLocalDataSource>;
String _$loginRepositoryHash() => r'f6c767c640f036b73d8bd5bc4aa41fcb95d08d08';

/// See also [loginRepository].
@ProviderFor(loginRepository)
final loginRepositoryProvider = AutoDisposeProvider<LoginRepo>.internal(
  loginRepository,
  name: r'loginRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loginRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LoginRepositoryRef = AutoDisposeProviderRef<LoginRepo>;
String _$loginStateHash() => r'8b99c3e8706679ef54b1247a7da1173c0487c485';

/// See also [LoginState].
@ProviderFor(LoginState)
final loginStateProvider =
    AutoDisposeNotifierProvider<LoginState, AsyncValue<bool>>.internal(
  LoginState.new,
  name: r'loginStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loginStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LoginState = AutoDisposeNotifier<AsyncValue<bool>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
