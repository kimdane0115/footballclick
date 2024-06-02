
import 'package:footballclick/feature/1.sign/domain/entities/profile.dart';

import '../../domain/repository/sign_repository.dart';
import '../data_sources/supabase/supabase_sign_api_service.dart';

class SignRepositoryImpl extends SignRepository {
  final SupabaseSignApiService _supabaseSignApiService;

  SignRepositoryImpl(this._supabaseSignApiService);
  
  @override
  Future<Profile> userVerify(String email, String idToken, String accessToken) async {

    try {
      final res = await _supabaseSignApiService.userVerify(email, idToken, accessToken);
      // print('>>>> $res');
      if (res != null) {
        return Profile(
          id: res.id,
          email: res.email,
          name: res.name,
          profile_image_url: res.profile_image_url,
          fcm_token: res.fcm_token,
          access_token: res.access_token,
          id_token: res.id_token,
          created_at: res.created_at,
        );
      } else {
        return Profile(
          id: 0,
          email: '',
          name: '',
          profile_image_url: '',
          fcm_token: '',
          access_token: '',
          id_token: '',
          created_at: DateTime.now(),
        );
      }
    } catch (e) {
      throw UnimplementedError();
    }
  }
  
  @override
  Future<void> addProfile(Map<String, dynamic> request) async {
    final res = _supabaseSignApiService.addProfile(request);
  }
  
  @override
  Future<void> deleteProfile(int id) {
    // TODO: implement deleteProfile
    throw UnimplementedError();
  }
  
  @override
  Future<Profile> getProfile(String email) {
    // TODO: implement getProfile
    throw UnimplementedError();
  }
  
  @override
  Future<void> updateProfile(Map<String, dynamic> request, int id) {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }
  
}
