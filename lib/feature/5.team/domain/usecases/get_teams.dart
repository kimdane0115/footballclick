import 'package:footballclick/feature/5.team/data/models/sb_team_model.dart';

import '../entities/team.dart';
import '../repository/team_repository.dart';

class GetTeams {
  final TeamRepository repository;

  GetTeams(this.repository);

  Future<List<Team>> call(String? teamName) async {
    try {
      final res = await repository.getTeams(teamName);
      List<Team> teamList = [];
      for (SbTeamModel arg in res) {
        Team team = Team(
          id: arg.id,
          teamName: arg.teamName,
          region: arg.region,
          memberCount: 0,
        );
        teamList.add(team);
      }
      return teamList;
    } catch (e) {
      rethrow;
    }
  }
}