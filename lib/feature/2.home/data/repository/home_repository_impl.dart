
import '../../domain/entities/member.dart';
import '../../domain/entities/player.dart';
import '../../domain/repository/home_repository.dart';
import '../data_sources/supabase/supabase_home_api_service.dart';
import '../models/models.dart';

class HomeRepositoryImpl implements HomeRepository {
  final SupabaseApiService _supabaseApiService;

  HomeRepositoryImpl(this._supabaseApiService);

  @override
  Future<List<Member>> getMember(String teamId) async {
  // Future<void> getMember(String teamId) async {
    // TODO: implement getMember
    var res = _supabaseApiService.getMember(teamId);
    return res;
  }

  @override
  Future<void> getTeam(String teamId) {
    // TODO: implement getTeam
    throw UnimplementedError();
  }

  @override
  Future<void> getUserData(String userId) {
    // TODO: implement getUserData
    throw UnimplementedError();
  }

  @override
  Future<void> patchMemberRecordYear(String teamId, String memberId, String year, CommonRequest<RecordModel> request) {
    // TODO: implement patchMemberRecordYear
    throw UnimplementedError();
  }

  @override
  Future<void> signInByEmail(String request) {
    // TODO: implement signInByEmail
    throw UnimplementedError();
  }
  
  @override
  Future<void> addMemeber(Map<String, dynamic> request) async {
    // TODO: implement addMemeber
    // throw UnimplementedError();
    var res = _supabaseApiService.addMember(request);
  }
  
  @override
  Future<void> deleteMemeber(int id) async {
    // TODO: implement deleteMemeber
    var res = await _supabaseApiService.deleteMemeber(id);
    // throw UnimplementedError();
  }
  
  @override
  Future<void> updateMemeber(Map<String, dynamic> request, int id) async {
    // TODO: implement updateMemeber
    var res = await _supabaseApiService.updateMember(request, id);
    // throw UnimplementedError();
  }
  
  @override
  Future<void> addPlayer(Map<String, dynamic> request) async {
    var res = await _supabaseApiService.addPlayer(request);
  }
  
  @override
  Future<void> deletePlayer(int id) {
    // TODO: implement deletePlayer
    throw UnimplementedError();
  }
  
  @override
  Future<List<Player>> getPlayers(String teamId) async {
    var res = _supabaseApiService.getPlayers(teamId);
    return res;
  }
  
  @override
  Future<void> updatePlayer(Map<String, dynamic> request, int id) {
    // TODO: implement updatePlayer
    throw UnimplementedError();
  }
  
}