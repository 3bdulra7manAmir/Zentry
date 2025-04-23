// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginCheckHash() => r'93abe2ebec51048e725b08dcd847d06593126753';

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

/// See also [loginCheck].
@ProviderFor(loginCheck)
const loginCheckProvider = LoginCheckFamily();

/// See also [loginCheck].
class LoginCheckFamily extends Family<AsyncValue<bool>> {
  /// See also [loginCheck].
  const LoginCheckFamily();

  /// See also [loginCheck].
  LoginCheckProvider call(
    ({String email, String password}) input,
  ) {
    return LoginCheckProvider(
      input,
    );
  }

  @override
  LoginCheckProvider getProviderOverride(
    covariant LoginCheckProvider provider,
  ) {
    return call(
      provider.input,
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
  String? get name => r'loginCheckProvider';
}

/// See also [loginCheck].
class LoginCheckProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [loginCheck].
  LoginCheckProvider(
    ({String email, String password}) input,
  ) : this._internal(
          (ref) => loginCheck(
            ref as LoginCheckRef,
            input,
          ),
          from: loginCheckProvider,
          name: r'loginCheckProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loginCheckHash,
          dependencies: LoginCheckFamily._dependencies,
          allTransitiveDependencies:
              LoginCheckFamily._allTransitiveDependencies,
          input: input,
        );

  LoginCheckProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.input,
  }) : super.internal();

  final ({String email, String password}) input;

  @override
  Override overrideWith(
    FutureOr<bool> Function(LoginCheckRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LoginCheckProvider._internal(
        (ref) => create(ref as LoginCheckRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        input: input,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _LoginCheckProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginCheckProvider && other.input == input;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, input.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LoginCheckRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `input` of this provider.
  ({String email, String password}) get input;
}

class _LoginCheckProviderElement extends AutoDisposeFutureProviderElement<bool>
    with LoginCheckRef {
  _LoginCheckProviderElement(super.provider);

  @override
  ({String email, String password}) get input =>
      (origin as LoginCheckProvider).input;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
