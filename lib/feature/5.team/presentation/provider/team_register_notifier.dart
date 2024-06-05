


import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/team.dart';

part 'team_register_notifier.g.dart';

@Riverpod(keepAlive: true)
class TeamRegisterNotifier extends _$TeamRegisterNotifier {
  @override
  Team build() {
    return Team(
      id: null,
      teamName: null,
      region: "",
      memberCount: 0,
    );
  }

  void setTeamName(String? name) {
    state = state.copyWith(teamName: name);
  }

  void setRegion(String region) {
    state = state.copyWith(region: region);
  }
}

@Riverpod(keepAlive: true)
class TeamFindNotifier extends _$TeamFindNotifier {
  @override
  String build() {
    return '';
  }

  void setFindTeamName(String findName) {
    state = findName;
  }
}