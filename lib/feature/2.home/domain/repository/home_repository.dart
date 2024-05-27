

import '../../data/models/models.dart';
import '../entities/member.dart';
import '../entities/player.dart';

abstract class HomeRepository {
  Future<void> getTeam(String teamId);
  Future<List<Member>> getMember(String teamId);
  // Future<void> getMember(String teamId);
  Future<void> addMemeber(Map<String, dynamic> request);
  Future<void> updateMemeber(Map<String, dynamic> request, int id);
  Future<void> deleteMemeber(int id);

  Future<List<Player>> getPlayers(String teamId);
  // Future<void> getMember(String teamId);
  Future<void> addPlayer(Map<String, dynamic> request);
  Future<void> updatePlayer(Map<String, dynamic> request, int id);
  Future<void> deletePlayer(int id);

  Future<void> patchMemberRecordYear(String teamId, String memberId, String year, CommonRequest<RecordModel> request);
  Future<void> getUserData(String userId);
  Future<void> signInByEmail(String request);
}