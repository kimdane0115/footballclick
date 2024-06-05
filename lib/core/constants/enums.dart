// enum AdminKind {
//   one('단장', '최신순'),
//   two('감독', '만나는 날'),
//   three('총무', '제목순');

//   const AdminKind(this.serverName, this.name);
//   final String serverName;
//   final String name;
// }

enum AdminKind {
  one('단장'),
  two('감독'),
  three('총무');

  const AdminKind(this.name);
  final String name;
}