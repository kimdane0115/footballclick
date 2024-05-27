// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sb_player_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SbPlayerModelImpl _$$SbPlayerModelImplFromJson(Map<String, dynamic> json) =>
    _$SbPlayerModelImpl(
      id: (json['id'] as num).toInt(),
      team_id: json['team_id'] as String,
      team_name: json['team_name'] as String,
      name: json['name'] as String,
      number: json['number'] as String,
      position: json['position'] as String,
      joindate: DateTime.parse(json['joindate'] as String),
      block: json['block'] as bool,
      updated_at: DateTime.parse(json['updated_at'] as String),
      created_at: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$SbPlayerModelImplToJson(_$SbPlayerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'team_id': instance.team_id,
      'team_name': instance.team_name,
      'name': instance.name,
      'number': instance.number,
      'position': instance.position,
      'joindate': instance.joindate.toIso8601String(),
      'block': instance.block,
      'updated_at': instance.updated_at.toIso8601String(),
      'created_at': instance.created_at.toIso8601String(),
    };
