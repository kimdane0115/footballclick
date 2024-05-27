// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_async_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$playerAsyncNotifierHash() =>
    r'7830f73f0e2d1ee1cd23407b81d89a86b65a0516';

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

abstract class _$PlayerAsyncNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<Player>> {
  late final String teamId;

  FutureOr<List<Player>> build(
    String teamId,
  );
}

/// See also [PlayerAsyncNotifier].
@ProviderFor(PlayerAsyncNotifier)
const playerAsyncNotifierProvider = PlayerAsyncNotifierFamily();

/// See also [PlayerAsyncNotifier].
class PlayerAsyncNotifierFamily extends Family<AsyncValue<List<Player>>> {
  /// See also [PlayerAsyncNotifier].
  const PlayerAsyncNotifierFamily();

  /// See also [PlayerAsyncNotifier].
  PlayerAsyncNotifierProvider call(
    String teamId,
  ) {
    return PlayerAsyncNotifierProvider(
      teamId,
    );
  }

  @override
  PlayerAsyncNotifierProvider getProviderOverride(
    covariant PlayerAsyncNotifierProvider provider,
  ) {
    return call(
      provider.teamId,
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
  String? get name => r'playerAsyncNotifierProvider';
}

/// See also [PlayerAsyncNotifier].
class PlayerAsyncNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    PlayerAsyncNotifier, List<Player>> {
  /// See also [PlayerAsyncNotifier].
  PlayerAsyncNotifierProvider(
    String teamId,
  ) : this._internal(
          () => PlayerAsyncNotifier()..teamId = teamId,
          from: playerAsyncNotifierProvider,
          name: r'playerAsyncNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$playerAsyncNotifierHash,
          dependencies: PlayerAsyncNotifierFamily._dependencies,
          allTransitiveDependencies:
              PlayerAsyncNotifierFamily._allTransitiveDependencies,
          teamId: teamId,
        );

  PlayerAsyncNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.teamId,
  }) : super.internal();

  final String teamId;

  @override
  FutureOr<List<Player>> runNotifierBuild(
    covariant PlayerAsyncNotifier notifier,
  ) {
    return notifier.build(
      teamId,
    );
  }

  @override
  Override overrideWith(PlayerAsyncNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PlayerAsyncNotifierProvider._internal(
        () => create()..teamId = teamId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        teamId: teamId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PlayerAsyncNotifier, List<Player>>
      createElement() {
    return _PlayerAsyncNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PlayerAsyncNotifierProvider && other.teamId == teamId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, teamId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PlayerAsyncNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<Player>> {
  /// The parameter `teamId` of this provider.
  String get teamId;
}

class _PlayerAsyncNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PlayerAsyncNotifier,
        List<Player>> with PlayerAsyncNotifierRef {
  _PlayerAsyncNotifierProviderElement(super.provider);

  @override
  String get teamId => (origin as PlayerAsyncNotifierProvider).teamId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
