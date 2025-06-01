// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'likes_count_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$likesCountControllerHash() =>
    r'412e089631aa2fd8c98d2043ff47a4ed77d4c63d';

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

abstract class _$LikesCountController
    extends BuildlessAutoDisposeNotifier<(int likes, bool isLiked)> {
  late final int initialLikes;

  (int likes, bool isLiked) build({
    required int initialLikes,
  });
}

/// See also [LikesCountController].
@ProviderFor(LikesCountController)
const likesCountControllerProvider = LikesCountControllerFamily();

/// See also [LikesCountController].
class LikesCountControllerFamily extends Family<(int likes, bool isLiked)> {
  /// See also [LikesCountController].
  const LikesCountControllerFamily();

  /// See also [LikesCountController].
  LikesCountControllerProvider call({
    required int initialLikes,
  }) {
    return LikesCountControllerProvider(
      initialLikes: initialLikes,
    );
  }

  @override
  LikesCountControllerProvider getProviderOverride(
    covariant LikesCountControllerProvider provider,
  ) {
    return call(
      initialLikes: provider.initialLikes,
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
  String? get name => r'likesCountControllerProvider';
}

/// See also [LikesCountController].
class LikesCountControllerProvider extends AutoDisposeNotifierProviderImpl<
    LikesCountController, (int likes, bool isLiked)> {
  /// See also [LikesCountController].
  LikesCountControllerProvider({
    required int initialLikes,
  }) : this._internal(
          () => LikesCountController()..initialLikes = initialLikes,
          from: likesCountControllerProvider,
          name: r'likesCountControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$likesCountControllerHash,
          dependencies: LikesCountControllerFamily._dependencies,
          allTransitiveDependencies:
              LikesCountControllerFamily._allTransitiveDependencies,
          initialLikes: initialLikes,
        );

  LikesCountControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialLikes,
  }) : super.internal();

  final int initialLikes;

  @override
  (int likes, bool isLiked) runNotifierBuild(
    covariant LikesCountController notifier,
  ) {
    return notifier.build(
      initialLikes: initialLikes,
    );
  }

  @override
  Override overrideWith(LikesCountController Function() create) {
    return ProviderOverride(
      origin: this,
      override: LikesCountControllerProvider._internal(
        () => create()..initialLikes = initialLikes,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initialLikes: initialLikes,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<LikesCountController,
      (int likes, bool isLiked)> createElement() {
    return _LikesCountControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LikesCountControllerProvider &&
        other.initialLikes == initialLikes;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialLikes.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LikesCountControllerRef
    on AutoDisposeNotifierProviderRef<(int likes, bool isLiked)> {
  /// The parameter `initialLikes` of this provider.
  int get initialLikes;
}

class _LikesCountControllerProviderElement
    extends AutoDisposeNotifierProviderElement<LikesCountController,
        (int likes, bool isLiked)> with LikesCountControllerRef {
  _LikesCountControllerProviderElement(super.provider);

  @override
  int get initialLikes => (origin as LikesCountControllerProvider).initialLikes;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
