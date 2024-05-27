import '../repository/home_repository.dart';

class UpdatePlayer {
  final HomeRepository repository;

  UpdatePlayer(this.repository);

  Future<void> call(Map<String, dynamic> request, int id) {
    return repository.updatePlayer(request, id);
  }  
}