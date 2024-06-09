

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/profile.dart';

part 'sign_up_screen_notifier.g.dart';

@Riverpod(keepAlive: true)
class SignUpScreenNotifier extends _$SignUpScreenNotifier {
  @override
  Profile build() {
    return Profile(
      email: '',
      name: '',
      profileImageUrl: '',
      fcmToken: '',
      createdAt: DateTime.now(),
    );
  }

  void setName(String name) {
    state = state.copyWith(name: name);
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
}