import 'package:footballclick/feature/1.sign/domain/entities/profile.dart';

abstract class SignRepository {
  Future<Profile> userVerify(String email, String idToken, String accessToken);
  Future<Profile> getProfile(String email);
  Future<void> addProfile(Map<String, dynamic> request);
  Future<void> updateProfile(Map<String, dynamic> request, int id);
  Future<void> deleteProfile(int id);
}