import 'package:footballclick/feature/1.sign/presentation/provider/sign_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/profile.dart';

part 'sign_async_notifier.g.dart';

@riverpod
class SignAsyncNotifier extends _$SignAsyncNotifier {
  @override
  FutureOr<Profile?> build() async {
    return null;
  }

  // Future<Profile> fetchProfile(String email, String idToken) async {
  //   // final getMembers = ref.read(getMembersProvider);
  //   return ref.read(userVerifyProvider)(email, idToken);
  // }

  Future<void> addProfie(Map<String, dynamic> request) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final addProfile = ref.read(addProfileProvider);
      addProfile(request);
    });
  }

  Future<void> snsVerify(String email, String idToken) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final profile = ref.read(userVerifyProvider);
      return profile(email, idToken);

    //   return fetchProfile(email, token);
    });
  }
}

