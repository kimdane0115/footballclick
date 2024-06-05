abstract class TeamRepository {
  Future<void> getTeam();
  Future<void> addTeam(Map<String, dynamic> request);
  Future<String> findTeam(String teamName);
  Future<void> updateTeam();
  Future<void> deleteTeam();
}