// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_down_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$resendCountdownHash() => r'b20db7c9cfa0a1ffe92e75279570d3a690c41892';

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

abstract class _$ResendCountdown extends BuildlessAutoDisposeNotifier<int> {
  late final BuildContext context;

  int build(
    BuildContext context,
  );
}

/// See also [ResendCountdown].
@ProviderFor(ResendCountdown)
const resendCountdownProvider = ResendCountdownFamily();

/// See also [ResendCountdown].
class ResendCountdownFamily extends Family<int> {
  /// See also [ResendCountdown].
  const ResendCountdownFamily();

  /// See also [ResendCountdown].
  ResendCountdownProvider call(
    BuildContext context,
  ) {
    return ResendCountdownProvider(
      context,
    );
  }

  @override
  ResendCountdownProvider getProviderOverride(
    covariant ResendCountdownProvider provider,
  ) {
    return call(
      provider.context,
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
  String? get name => r'resendCountdownProvider';
}

/// See also [ResendCountdown].
class ResendCountdownProvider
    extends AutoDisposeNotifierProviderImpl<ResendCountdown, int> {
  /// See also [ResendCountdown].
  ResendCountdownProvider(
    BuildContext context,
  ) : this._internal(
          () => ResendCountdown()..context = context,
          from: resendCountdownProvider,
          name: r'resendCountdownProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$resendCountdownHash,
          dependencies: ResendCountdownFamily._dependencies,
          allTransitiveDependencies:
              ResendCountdownFamily._allTransitiveDependencies,
          context: context,
        );

  ResendCountdownProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.context,
  }) : super.internal();

  final BuildContext context;

  @override
  int runNotifierBuild(
    covariant ResendCountdown notifier,
  ) {
    return notifier.build(
      context,
    );
  }

  @override
  Override overrideWith(ResendCountdown Function() create) {
    return ProviderOverride(
      origin: this,
      override: ResendCountdownProvider._internal(
        () => create()..context = context,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ResendCountdown, int> createElement() {
    return _ResendCountdownProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ResendCountdownProvider && other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ResendCountdownRef on AutoDisposeNotifierProviderRef<int> {
  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _ResendCountdownProviderElement
    extends AutoDisposeNotifierProviderElement<ResendCountdown, int>
    with ResendCountdownRef {
  _ResendCountdownProviderElement(super.provider);

  @override
  BuildContext get context => (origin as ResendCountdownProvider).context;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
