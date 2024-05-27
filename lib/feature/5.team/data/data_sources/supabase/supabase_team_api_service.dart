

import 'package:supabase_flutter/supabase_flutter.dart';

abstract class SupabaseTeamApiService {
  Future<void> getTeam();
  Future<void> addTeam(Map<String, dynamic> request);
  Future<void> updateTeam();
  Future<void> deleteTeam();
}

class SupabaseTeamApiServiceImpl implements SupabaseTeamApiService {
  @override
  Future<void> addTeam(Map<String, dynamic> request) async {
    final client = Supabase.instance.client;
    final response = await client.from('team').insert([request]).select();
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