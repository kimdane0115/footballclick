import 'package:freezed_annotation/freezed_annotation.dart';

part 'sb_team_model.freezed.dart';
part 'sb_team_model.g.dart';

@freezed
class SbTeamModel with _$SbTeamModel {

  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  factory SbTeamModel({
    required int id,
    required String teamName,
    required String region,
    int? memberCount,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) = _SbTeamModel;

  factory SbTeamModel.fromJson(Map<String, dynamic> json) => _$SbTeamModelFromJson(json);
}