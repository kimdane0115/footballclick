

import 'package:footballclick/feature/5.team/data/models/sb_team_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class SupabaseTeamApiService {
  Future<void> getTeam();
  Future<String> findTeam(String teamName);
  Future<void> addTeam(Map<String, dynamic> request);
  Future<void> updateTeam();
  Future<void> deleteTeam();
}

class SupabaseTeamApiServiceImpl implements SupabaseTeamApiService {
  @override
  Future<void> addTeam(Map<String, dynamic> request) async {

    try {
      final client = Supabase.instance.client;
      final response = await client.from('team').insert([request]).select().single();
      SbTeamModel? model = SbTeamModel.fromJson(response);
      print('>>>>> team id : ${model.id}');
      print('>>>>> team id : ${model.team_name}');
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
      final client = Supabase.instance.client;
      final res = await client.from('team').select('*').eq('team_name', teamName).single();
      print('>>>>> res : ${res['team_name']}');
      return res['team_name'];
    } catch (e) {
      rethrow;
    }
  }

}