import '../repository/home_repository.dart';

class AddPlayer {
  final HomeRepository repository;

  AddPlayer(this.repository);

  Future<void> call(Map<String, dynamic> request) {
    return repository.addPlayer(request);
  }  
}