import '../repository/home_repository.dart';

class DeletePlayer {
  final HomeRepository repository;

  DeletePlayer(this.repository);

  Future<void> call(int id) {
    return repository.deletePlayer(id);
  }  
}