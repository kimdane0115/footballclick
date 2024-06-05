import 'package:footballclick/feature/5.team/data/repository/team_repository_impl.dart';
import 'package:footballclick/feature/5.team/domain/repository/team_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/data_sources/supabase/supabase_team_api_service.dart';
import '../../domain/usecases/add_team.dart';
import '../../domain/usecases/find_team.dart';

part 'team_provider.g.dart';

@Riverpod(keepAlive: true)
SupabaseTeamApiService supabaseTeamApiClient(SupabaseTeamApiClientRef ref) {
  return SupabaseTeamApiServiceImpl();
}

@Riverpod(keepAlive: true)
TeamRepository teamRepository(TeamRepositoryRef ref) {
  final teamApiService = ref.read(supabaseTeamApiClientProvider);
  return TeamRepositoryImpl(teamApiService);
}

@Riverpod(keepAlive: true)
AddTeam addTeam(AddTeamRef ref) {
  final repository = ref.read(teamRepositoryProvider);
  return AddTeam(repository);
}

@Riverpod(keepAlive: true)
FindTeam findTeam(FindTeamRef ref) {
  final repository = ref.read(teamRepositoryProvider);
  return FindTeam(repository);
}