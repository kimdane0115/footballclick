import '../repository/team_repository.dart';

class AddTeam {
  final TeamRepository repository;

  AddTeam(this.repository);

  Future<void> call(Map<String, dynamic> request) async {
    try {
      await repository.addTeam(request);
    } catch (e) {
      rethrow;
    }
  }
}