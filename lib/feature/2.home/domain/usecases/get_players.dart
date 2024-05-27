
import 'package:footballclick/feature/2.home/domain/repository/home_repository.dart';

import '../entities/player.dart';

class GetPlayers {
  final HomeRepository repository;

  GetPlayers(this.repository);

  Future<List<Player>> call(String teamId) {
    return repository.getPlayers(teamId);
  }
}