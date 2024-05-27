import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../domain/entities/profile.dart';

abstract class SupabaseSignApiService {
  Future<Profile> userVerify(String email);
}

class SupabaseSignApiServiceImpl implements SupabaseSignApiService {
  @override
  Future<Profile> userVerify(String email) async {
    // TODO: implement userVerify
    Profile profile = Profile();
    final client = Supabase.instance.client;
    final response = await client.from('profiles').select('*').eq('email', email);

    print('>>>>>>>>> response : $response');

    return profile;
    // throw UnimplementedError();
  }

}