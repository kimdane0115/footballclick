import '../repository/team_repository.dart';

class FindTeam {
  final TeamRepository repository;

  FindTeam(this.repository);

  Future<String> call(String teamName) async {
    try {
      final res = await repository.findTeam(teamName);
      return res;
    } catch (e) {
      rethrow;
    }
  }
}