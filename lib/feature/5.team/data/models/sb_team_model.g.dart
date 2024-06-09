// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sb_team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SbTeamModelImpl _$$SbTeamModelImplFromJson(Map<String, dynamic> json) =>
    _$SbTeamModelImpl(
      id: (json['id'] as num).toInt(),
      teamName: json['teamName'] as String,
      region: json['region'] as String,
      memberCount: (json['memberCount'] as num?)?.toInt(),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$SbTeamModelImplToJson(_$SbTeamModelImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'teamName': instance.teamName,
    'region': instance.region,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('memberCount', instance.memberCount);
  val['updatedAt'] = instance.updatedAt.toIso8601String();
  val['createdAt'] = instance.createdAt.toIso8601String();
  return val;
}
