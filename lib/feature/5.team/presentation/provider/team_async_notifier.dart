import 'package:footballclick/feature/5.team/presentation/provider/team_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../domain/entities/team.dart';

part 'team_async_notifier.g.dart';

// @Riverpod(keepAlive: true)
@riverpod
class TeamAsyncNotifier extends _$TeamAsyncNotifier {
  @override
  FutureOr<List<Team>?> build() async {
    ref.onDispose(() {
      print('[TeamAsyncNotifierProvider] disposed');
    });
    return await fetchTeams(null);
    // return null;
  }

  Future<List<Team>?> fetchTeams(String? teamName) async {
    return ref.read(getTeamsProvider)(teamName);
  }

  Future<void> addTeam(Map<String, dynamic> request) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final addTeam = ref.read(addTeamProvider);
      try {
        await addTeam(request);
      } catch (e) {
        if (e is PostgrestException) {
          print(e.message);
        } else {
          print(e.toString());
        }
        rethrow;
      }
      return null;
    });
  }

  FutureOr<void> findTeam(String teamName) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      // final findTeam = ref.read(findTeamProvider);
      try {
        // return await findTeam(teamName);
        return fetchTeams(teamName);
      } catch (e) {
        if (e is PostgrestException) {
          print(e.message);
        } else {
          print(e.toString());
        }
        rethrow;
      }
    });
  }

  FutureOr<void> getTeamList() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        return fetchTeams(null);
      } catch (e) {
        if (e is PostgrestException) {
          print(e.message);
        } else {
          print(e.toString());
        }
        rethrow;
      }
    });
  }
}