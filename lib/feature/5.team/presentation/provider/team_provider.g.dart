// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$supabaseTeamApiClientHash() =>
    r'b5f63fa528738eaf4ecdc12a4be050da4f957520';

/// See also [supabaseTeamApiClient].
@ProviderFor(supabaseTeamApiClient)
final supabaseTeamApiClientProvider = Provider<SupabaseTeamApiService>.internal(
  supabaseTeamApiClient,
  name: r'supabaseTeamApiClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$supabaseTeamApiClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SupabaseTeamApiClientRef = ProviderRef<SupabaseTeamApiService>;
String _$teamRepositoryHash() => r'406d41f04f1e630c1ddf46c7207656a05930ecad';

/// See also [teamRepository].
@ProviderFor(teamRepository)
final teamRepositoryProvider = Provider<TeamRepository>.internal(
  teamRepository,
  name: r'teamRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$teamRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TeamRepositoryRef = ProviderRef<TeamRepository>;
String _$getTeamsHash() => r'874da163d060c6968f72552913b22a52d871eddb';

/// See also [getTeams].
@ProviderFor(getTeams)
final getTeamsProvider = AutoDisposeProvider<GetTeams>.internal(
  getTeams,
  name: r'getTeamsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getTeamsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetTeamsRef = AutoDisposeProviderRef<GetTeams>;
String _$addTeamHash() => r'b42df79d0be1673a3fe495835f3028951a542e35';

/// See also [addTeam].
@ProviderFor(addTeam)
final addTeamProvider = Provider<AddTeam>.internal(
  addTeam,
  name: r'addTeamProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$addTeamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AddTeamRef = ProviderRef<AddTeam>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
