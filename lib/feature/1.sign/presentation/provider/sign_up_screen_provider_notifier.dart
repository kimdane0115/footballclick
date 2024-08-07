

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/profile.dart';

part 'sign_up_screen_provider_notifier.g.dart';

// @Riverpod(keepAlive: true)
@riverpod
class SignUpScreenProviderNotifier extends _$SignUpScreenProviderNotifier {
  @override
  Profile build() {
    return Profile(
      email: '',
      name: '',
      age: '',
      position: '',
      teamName: '',
      teamAdmin: false,
      profileImageUrl: '',
      fcmToken: '',
      createdAt: DateTime.now(),
    );
  }

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setAge(String age) {
    state = state.copyWith(age: age);
  }

  void setPosition(String position) {
    state = state.copyWith(position: position);
  }

  void setProfileImageUrl(String profileImageUrl) {
    state = state.copyWith(profileImageUrl: profileImageUrl);
  }

  void setFcmToken(String fcmToken) {
    state = state.copyWith(fcmToken: fcmToken);
  }

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setIdToken(String idToken) {
    state = state.copyWith(idToken: idToken);
  }

  void setAcessToken(String accessToken) {
    state = state.copyWith(accessToken: accessToken);
  }

  void setTeamName(String teamName) {
    state = state.copyWith(teamName: teamName);
  }

  void setTeamAdmin(bool teamAdmin) {
    state = state.copyWith(teamAdmin: teamAdmin);
  }
}