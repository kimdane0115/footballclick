import 'package:freezed_annotation/freezed_annotation.dart';

part 'sb_team_model.freezed.dart';
part 'sb_team_model.g.dart';

@freezed
class SbTeamModel with _$SbTeamModel {

  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  factory SbTeamModel({
    required int id,
    required String team_name,
    required String region,
    int? member_count,
    required DateTime updated_at,
    required DateTime created_at,
  }) = _SbTeamModel;

  factory SbTeamModel.fromJson(Map<String, dynamic> json) => _$SbTeamModelFromJson(json);
}