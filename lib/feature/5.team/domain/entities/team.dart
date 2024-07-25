
class Team {
  final int? id;
  final String? teamName;
  final String region;
  final int memberCount;

  Team({required this.id, this.teamName, required this.region, required this.memberCount});

  Team copyWith({
    // ValueGetter<int?>? id,
    int? id,
    String? teamName,
    String? region,
    int? memberCount,
  }) {
    return Team(
      // id: id != null ? id() : this.id,
      id: id ?? this.id,
      teamName: teamName ?? this.teamName,
      region: region ?? this.region,
      memberCount: memberCount ?? this.memberCount,
    );
  }
}
