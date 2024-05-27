import 'package:footballclick/feature/1.sign/data/models/supabase/sb_profile_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../domain/entities/profile.dart';

abstract class SupabaseSignApiService {
  Future<Profile> userVerify(String email);
}

class SupabaseSignApiServiceImpl implements SupabaseSignApiService {
  @override
  Future<Profile> userVerify(String email) async {
    // TODO: implement userVerify
    final client = Supabase.instance.client;
    final response = await client.from('profiles').select('*').eq('email', email);

    print('>>>>>>>>> response : $response');
    List<SbProfileModel> result = response.map((map) => SbProfileModel.fromJson(map)).toList();
    Profile profile = Profile(
      id: result.first.id,
      email: result.first.email,
      name: result.first.name,
      profile_image_url: result.first.profile_image_url,
      fcm_token: result.first.fcm_token,
      token: result.first.token,
      created_at: result.first.created_at,
    );
    return profile;
    // throw UnimplementedError();
  }

}