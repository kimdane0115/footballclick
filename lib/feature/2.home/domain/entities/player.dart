class Player {
  final int id;
  final String teamId;
  final String teamName;
  final String name;
  final String backNumber;
  final String position;
  final DateTime joindate;
  final bool block;
  final DateTime updatedAt;
  final DateTime createdAt;

  Player(
      {required this.id,
      required this.teamId,
      required this.teamName,
      required this.name,
      required this.backNumber,
      required this.position,
      required this.joindate,
      required this.block,
      required this.updatedAt,
      required this.createdAt});
}