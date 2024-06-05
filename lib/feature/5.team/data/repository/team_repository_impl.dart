

import 'package:footballclick/feature/5.team/data/data_sources/supabase/supabase_team_api_service.dart';

import '../../domain/repository/team_repository.dart';

class TeamRepositoryImpl implements TeamRepository {
  final SupabaseTeamApiService _supabaseTeamApiService;

  TeamRepositoryImpl(this._supabaseTeamApiService);
  @override
  Future<void> addTeam(Map<String, dynamic> request) async {
    try {
      await _supabaseTeamApiService.addTeam(request);
    } catch (e) {
      rethrow;
    }
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
  
  @override
  Future<String> findTeam(String teamName) async {
    try {
      final res = await _supabaseTeamApiService.findTeam(teamName);
      return res;
    } catch (e) {
      rethrow;
    }
  }

}