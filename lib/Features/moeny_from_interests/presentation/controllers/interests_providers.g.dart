// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interests_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$interestsRepositoryHash() =>
    r'24f6f5eddb683ae92a89d08ae18c73768ea5fab7';

/// See also [interestsRepository].
@ProviderFor(interestsRepository)
final interestsRepositoryProvider =
    AutoDisposeProvider<InterestsRepository>.internal(
  interestsRepository,
  name: r'interestsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$interestsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef InterestsRepositoryRef = AutoDisposeProviderRef<InterestsRepository>;
String _$interestCategoriesHash() =>
    r'8bfbfa4f1ebddf1a1082731ef7bb7f5a90056b23';

/// See also [interestCategories].
@ProviderFor(interestCategories)
final interestCategoriesProvider =
    AutoDisposeFutureProvider<List<InterestCategory>>.internal(
  interestCategories,
  name: r'interestCategoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$interestCategoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef InterestCategoriesRef
    = AutoDisposeFutureProviderRef<List<InterestCategory>>;
String _$selectedCategoriesHash() =>
    r'556151a43368d8193c279f5c84c9cb04562112b3';

/// See also [selectedCategories].
@ProviderFor(selectedCategories)
final selectedCategoriesProvider =
    AutoDisposeFutureProvider<List<InterestCategory>>.internal(
  selectedCategories,
  name: r'selectedCategoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedCategoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SelectedCategoriesRef
    = AutoDisposeFutureProviderRef<List<InterestCategory>>;
String _$isCategorySelectedHash() =>
    r'bd571eb7ac4303a78fab2dc3155467a4a304fda9';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$IsCategorySelected extends BuildlessAutoDisposeNotifier<bool> {
  late final int categoryId;

  bool build(
    int categoryId,
  );
}

/// See also [IsCategorySelected].
@ProviderFor(IsCategorySelected)
const isCategorySelectedProvider = IsCategorySelectedFamily();

/// See also [IsCategorySelected].
class IsCategorySelectedFamily extends Family<bool> {
  /// See also [IsCategorySelected].
  const IsCategorySelectedFamily();

  /// See also [IsCategorySelected].
  IsCategorySelectedProvider call(
    int categoryId,
  ) {
    return IsCategorySelectedProvider(
      categoryId,
    );
  }

  @override
  IsCategorySelectedProvider getProviderOverride(
    covariant IsCategorySelectedProvider provider,
  ) {
    return call(
      provider.categoryId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'isCategorySelectedProvider';
}

/// See also [IsCategorySelected].
class IsCategorySelectedProvider
    extends AutoDisposeNotifierProviderImpl<IsCategorySelected, bool> {
  /// See also [IsCategorySelected].
  IsCategorySelectedProvider(
    int categoryId,
  ) : this._internal(
          () => IsCategorySelected()..categoryId = categoryId,
          from: isCategorySelectedProvider,
          name: r'isCategorySelectedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isCategorySelectedHash,
          dependencies: IsCategorySelectedFamily._dependencies,
          allTransitiveDependencies:
              IsCategorySelectedFamily._allTransitiveDependencies,
          categoryId: categoryId,
        );

  IsCategorySelectedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
  }) : super.internal();

  final int categoryId;

  @override
  bool runNotifierBuild(
    covariant IsCategorySelected notifier,
  ) {
    return notifier.build(
      categoryId,
    );
  }

  @override
  Override overrideWith(IsCategorySelected Function() create) {
    return ProviderOverride(
      origin: this,
      override: IsCategorySelectedProvider._internal(
        () => create()..categoryId = categoryId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryId: categoryId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<IsCategorySelected, bool> createElement() {
    return _IsCategorySelectedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsCategorySelectedProvider &&
        other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin IsCategorySelectedRef on AutoDisposeNotifierProviderRef<bool> {
  /// The parameter `categoryId` of this provider.
  int get categoryId;
}

class _IsCategorySelectedProviderElement
    extends AutoDisposeNotifierProviderElement<IsCategorySelected, bool>
    with IsCategorySelectedRef {
  _IsCategorySelectedProviderElement(super.provider);

  @override
  int get categoryId => (origin as IsCategorySelectedProvider).categoryId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
