

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/player.dart';
import 'home_provider.dart';

part 'player_async_notifier.g.dart';

@riverpod
class PlayerAsyncNotifier extends _$PlayerAsyncNotifier {
  @override
  FutureOr<List<Player>> build(String teamId) {
    return fetchPlayers(teamId);
  }

  Future<List<Player>> fetchPlayers(String teamId) async {
    return ref.read(getPlayersProvider)(teamId);
  }

  Future<void> getPlayers(String teamId) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return fetchPlayers(teamId);
    });
  }

  Future<void> addPlayer(Map<String, dynamic> request, String teamId) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final addPlayer = ref.read(addPlayerProvider);
      addPlayer(request);

      return fetchPlayers(teamId);
    });
  }
}