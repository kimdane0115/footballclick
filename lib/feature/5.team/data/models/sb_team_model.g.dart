// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sb_team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SbTeamModelImpl _$$SbTeamModelImplFromJson(Map<String, dynamic> json) =>
    _$SbTeamModelImpl(
      id: (json['id'] as num).toInt(),
      team_name: json['team_name'] as String,
      region: json['region'] as String,
      member_count: (json['member_count'] as num?)?.toInt(),
      updated_at: DateTime.parse(json['updated_at'] as String),
      created_at: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$SbTeamModelImplToJson(_$SbTeamModelImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'team_name': instance.team_name,
    'region': instance.region,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('member_count', instance.member_count);
  val['updated_at'] = instance.updated_at.toIso8601String();
  val['created_at'] = instance.created_at.toIso8601String();
  return val;
}
