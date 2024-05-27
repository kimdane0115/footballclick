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

  // Future<Profile> fetchProfile(String email, String token) async {
  //   // final getMembers = ref.read(getMembersProvider);
  //   return ref.read(userVerifyProvider)(email);
  // }

  Future<void> snsVerify(String email, String token) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final profile = ref.read(userVerifyProvider);
      return profile(email);

    //   return fetchProfile(email, token);
    });
  }
}

