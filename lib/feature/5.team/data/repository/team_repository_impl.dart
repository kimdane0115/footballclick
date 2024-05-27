

import 'package:footballclick/feature/5.team/data/data_sources/supabase/supabase_team_api_service.dart';

import '../../domain/repository/team_repository.dart';

class TeamRepositoryImpl implements TeamRepository {
  final SupabaseTeamApiService _supabaseTeamApiService;

  TeamRepositoryImpl(this._supabaseTeamApiService);
  @override
  Future<void> addTeam(Map<String, dynamic> request) async {
    // TODO: implement addTeam
    _supabaseTeamApiService.getTeam();
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTeam() {
    // TODO: implement deleteTeam
    throw UnimplementedError();
  }

  @override
  Future<void> getTeam() {
    // TODO: implement getTeam
    throw UnimplementedError();
  }

  @override
  Future<void> updateTeam() {
    // TODO: implement updateTeam
    throw UnimplementedError();
  }

}