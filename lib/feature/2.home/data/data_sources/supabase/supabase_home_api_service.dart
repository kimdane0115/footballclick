
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../domain/entities/member.dart';
import '../../models/supabase/sb_member_model.dart';

abstract class SupabaseApiService {
  Future<List<Member>> getMember(String teamId);
  Future<void> addMember(Map<String, dynamic> request);
  Future<void> updateMember(Map<String, dynamic> request, int id);
  Future<void> deleteMemeber(int id);
}

class SupabaseApiServiceImpl implements SupabaseApiService {
  @override
  Future<List<Member>> getMember(String teamId) async {
  // Future<void> getMember(String teamId) async {
    // TODO: implement getMember
    List<Member> members = [];
    try {
      print('>>> getMemeber is Call');
      final client = Supabase.instance.client;
      print('>> client : $client');
      // // Supabase에서 사용자 존재 여부 확인 후 사용자 가져오기
      final response = await client
          .from('profiles')
          .select('*');
          // .eq('id', currentUser.id) // ID 필드를 기준으로 필터링 (Supabase 테이블에 따라 조건이 달라질 수 있습니다)
          // .single();
      print('>>>> response : $response');
      // MemberModel member = MemberModel.fromJson(response);
      List<SbMemberModel> result = response.map((map) => SbMemberModel.fromJson(map)).toList();
      for(SbMemberModel args in result) {
        print('>>> ${args.id}, ${args.name}, ${args.fcm_token}');
        Member mem = Member(
          memberName: args.name,
          memberNumber: args.id,
          memberId: args.fcm_token,
          phone: args.profile_image_url,
        );

        members.add(mem);
      }

      return members;
      // print('${member.id}, ${member.name}');
      // UserModel user = UserModel.fromJson(response);
      // if (user.name == null || user.name!.isEmpty) {
      //   await updateMe({
      //     'name': randomNickname(),
      //   });
      // }

      // fcmToken update

      // final result = await updateMe({
      //   'fcm_token': await FirebaseService().getToken(),
      // });

      // if (result.isSuccess) {
      //   user = result.data!;
      // }

      // return user;
    } catch (e) {
      // return null;
      throw UnimplementedError();
    }
  }
  
  @override
  Future<void> addMember(Map<String, dynamic> request) async {
    // TODO: implement addMember
    final client = Supabase.instance.client;
    final response = await client.from('profiles').insert([request]).select();
    print('>>>> response : $response');
    // throw UnimplementedError();
  }
  
  @override
  Future<void> deleteMemeber(int id) async {
    final client = Supabase.instance.client;
    final response = await client.from('profiles').delete().eq('id', id);
    print('>>>> response : $response');
    // TODO: implement deleteMemeber
    // throw UnimplementedError();
  }
  
  @override
  Future<void> updateMember(Map<String, dynamic> request, int id) async {
    // TODO: implement updateMember
    final client = Supabase.instance.client;
    final response = await client.from('profiles').update(request).eq('id', id).select().single();

    // final response = await client.from('team').update(request).eq('id', id).select().single();
    print('>>>> response : $response');
    // throw UnimplementedError();
  }
}