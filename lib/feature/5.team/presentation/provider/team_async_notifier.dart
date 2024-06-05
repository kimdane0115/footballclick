import 'package:footballclick/feature/5.team/presentation/provider/team_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'team_async_notifier.g.dart';

@Riverpod(keepAlive: true)
class TeamAsyncNotifier extends _$TeamAsyncNotifier {
  @override
  FutureOr<String?> build() {
    return null;
  }

  FutureOr<void> addTeam(Map<String, dynamic> request) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final addTeam = ref.read(addTeamProvider);
      try {
        await addTeam(request);
      } catch (e) {
        if (e is PostgrestException) {
          return e.message;
        } else {
          return e.toString(); // 일반 예외 메시지
        }
      }
      return '등록 완료';
    });
  }

  FutureOr<void> findTeam(String teamName) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final findTeam = ref.read(findTeamProvider);
      try {
        return await findTeam(teamName);
      } catch (e) {
        if (e is PostgrestException) {
          return e.details.toString();
        } else {
          return e.toString(); // 일반 예외 메시지
        }
      }
    });
  }
}