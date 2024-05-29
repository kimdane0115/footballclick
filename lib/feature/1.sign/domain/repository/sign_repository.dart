import 'package:footballclick/feature/1.sign/domain/entities/profile.dart';

abstract class SignRepository {
  Future<Profile> userVerify(String email, String idToken);
  Future<void> addProfile(Map<String, dynamic> request);
}