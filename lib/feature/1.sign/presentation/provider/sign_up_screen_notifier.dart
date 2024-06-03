

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
      profile_image_url: '',
      fcm_token: '',
      created_at: DateTime.now(),
    );
  }

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setProfileImageUrl(String profileImageUrl) {
    state = state.copyWith(profile_image_url: profileImageUrl);
  }

  void setFcmToken(String fcmToken) {
    state = state.copyWith(fcm_token: fcmToken);
  }

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setIdToken(String idToken) {
    state = state.copyWith(id_token: idToken);
  }

  void setAcessToken(String accessToken) {
    state = state.copyWith(access_token: accessToken);
  }
}