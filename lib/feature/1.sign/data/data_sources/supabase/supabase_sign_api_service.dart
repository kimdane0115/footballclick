import 'package:footballclick/feature/1.sign/data/models/supabase/sb_profile_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../domain/entities/profile.dart';

abstract class SupabaseSignApiService {
  Future<Profile> userVerify(String email, String idToken, String accessToken);
  Future<void> addProfile(Map<String, dynamic> request);
}

class SupabaseSignApiServiceImpl implements SupabaseSignApiService {
  @override
  Future<Profile> userVerify(String email, String idToken, String accessToken) async {
    // TODO: implement userVerify
    final client = Supabase.instance.client;
    final response = await client.from('profiles').select('*').eq('email', email);

    print('>>>>>>>>> response : $response');
    Profile profile;
    if (response.isEmpty) {
      profile = Profile(
        id: 0,
        email: '',
        name: '',
        profile_image_url: '',
        fcm_token: '',
        access_token: '',
        id_token: '',
        created_at: DateTime.now(),
      );
    } else {
      await client
          .from('profiles')
          .update({
            'id_token': idToken,
            'access_token': accessToken,
            'updated_at': DateTime.now().toIso8601String()
          })
          .eq('email', email)
          .select()
          .single();
      List<SbProfileModel> result = response.map((map) => SbProfileModel.fromJson(map)).toList();
      print('>>>>>>> res id_token : ${result.first.id_token}');
      profile = Profile(
        id: result.first.id,
        email: result.first.email,
        name: result.first.name,
        profile_image_url: result.first.profile_image_url,
        fcm_token: result.first.fcm_token,
        access_token: result.first.access_token,
        id_token: result.first.id_token,
        created_at: result.first.created_at,
      );
    }
    return profile;
    // throw UnimplementedError();
  }
  
  @override
  Future<void> addProfile(Map<String, dynamic> request) async {
    final client = Supabase.instance.client;
    final response = await client.from('profiles').insert([request]).select();
    print('>>>> response : $response');
  }

}