import 'package:freezed_annotation/freezed_annotation.dart';

part 'sb_player_model.freezed.dart';
part 'sb_player_model.g.dart';

@freezed
class SbPlayerModel with _$SbPlayerModel {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  factory SbPlayerModel({
    required int id,
    String? teamId,
    required String teamName,
    required String name,
    String? number,
    required String position,
    DateTime? joindate,
    bool? block,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) = _SbPlayerModel;

  factory SbPlayerModel.fromJson(Map<String, dynamic> json) => _$SbPlayerModelFromJson(json);
  // Map<String, dynamic> toJson() => _$SbPlayerModelToJson(this);
}