
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/member.dart';
import 'home_provider.dart';

part 'member_async_notifier.g.dart';

@riverpod
class MemberAsyncNotifier extends _$MemberAsyncNotifier {
  @override
  FutureOr<List<Member>> build() {
    return fetchMembers('');
  }

  Future<List<Member>> fetchMembers(String teamId) async {
    // final getMembers = ref.read(getMembersProvider);
    return ref.read(getMembersProvider)(teamId);
  }

  Future<void> getMembers(String teamId) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return fetchMembers(teamId);
    });
  }

  Future<void> addMember(Map<String, dynamic> request) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final addMember = ref.read(addMemberProvider);
      addMember(request);

      return fetchMembers('');
    });
  }

  Future<void> updateMember(Map<String, dynamic> request, int id) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final updateMember = ref.read(updateMemeberProvider);
      updateMember(request, id);

      return fetchMembers('');
    });
  }

  Future<void> deleteMember(int id) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final deleteMemeber = ref.read(deleteMemeberProvider);
      deleteMemeber(id);

      return fetchMembers('');
    });
  }
}