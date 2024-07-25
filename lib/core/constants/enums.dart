// enum AdminKind {
//   one('단장', '최신순'),
//   two('감독', '만나는 날'),
//   three('총무', '제목순');

//   const AdminKind(this.serverName, this.name);
//   final String serverName;
//   final String name;
// }

enum AdminKind {
  one('관리자'),
  two('선수');
  // three('총무');

  const AdminKind(this.name);
  final String name;
}

enum MemberAge {
  one('10대'),
  two('20대'),
  three('30대'),
  four('40대'),
  five('50대'),
  six('60대 이상');

  // three('총무');

  const MemberAge(this.name);
  final String name;
}

enum PlayerPosition {
  one('포워드'),
  two('윙'),
  three('미드필더'),
  four('윙백'),
  five('센터백');
  // three('총무');

  const PlayerPosition(this.name);
  final String name;
}

enum TeamRegion {
  seoul('서울'),
  suwon('수원'),
  anyang('안양'),
  sungnam('성남');

  const TeamRegion(this.name);
  final String name;
}