
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
          age: '',
          position: '',
          teamName: '',
          profileImageUrl: res.profileImageUrl,
          fcmToken: res.fcmToken,
          accessToken: res.accessToken,
          idToken: res.idToken,
          createdAt: res.createdAt,
        );
      } else {
        return Profile(
          id: 0,
          email: '',
          name: '',
          age: '',
          position: '',
          teamName: '',
          profileImageUrl: '',
          fcmToken: '',
          accessToken: '',
          idToken: '',
          createdAt: DateTime.now(),
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
