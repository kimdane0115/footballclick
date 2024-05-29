import 'package:footballclick/feature/1.sign/domain/entities/profile.dart';

import '../repository/sign_repository.dart';

class UserVerify {
  final SignRepository repository;

  UserVerify(this.repository);

  Future<Profile> call(String email, String idToken) {
    return repository.userVerify(email, idToken);
  }
}