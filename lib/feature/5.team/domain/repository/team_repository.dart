import 'package:footballclick/feature/5.team/data/models/sb_team_model.dart';

abstract class TeamRepository {
  Future<List<SbTeamModel>> getTeams(String? teamName);
  Future<void> addTeam(Map<String, dynamic> request);
  Future<String> findTeam(String teamName);
  Future<void> updateTeam();
  Future<void> deleteTeam();
}