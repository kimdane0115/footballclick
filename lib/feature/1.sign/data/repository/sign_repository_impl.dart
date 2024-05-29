
import 'package:footballclick/feature/1.sign/domain/entities/profile.dart';

import '../../domain/repository/sign_repository.dart';
import '../data_sources/supabase/supabase_sign_api_service.dart';

class SignRepositoryImpl extends SignRepository {
  final SupabaseSignApiService _supabaseSignApiService;

  SignRepositoryImpl(this._supabaseSignApiService);
  
  @override
  Future<Profile> userVerify(String email, String idToken) async {
    final res = _supabaseSignApiService.userVerify(email, idToken);
    return res;
    // throw UnimplementedError();
  }
  
  @override
  Future<void> addProfile(Map<String, dynamic> request) async {
    final res = _supabaseSignApiService.addProfile(request);
  }
  
}
