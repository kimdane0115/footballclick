// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sb_player_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SbPlayerModelImpl _$$SbPlayerModelImplFromJson(Map<String, dynamic> json) =>
    _$SbPlayerModelImpl(
      id: (json['id'] as num).toInt(),
      teamId: json['teamId'] as String?,
      teamName: json['teamName'] as String,
      name: json['name'] as String,
      number: json['number'] as String?,
      position: json['position'] as String,
      joindate: json['joindate'] == null
          ? null
          : DateTime.parse(json['joindate'] as String),
      block: json['block'] as bool?,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$SbPlayerModelImplToJson(_$SbPlayerModelImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('teamId', instance.teamId);
  val['teamName'] = instance.teamName;
  val['name'] = instance.name;
  writeNotNull('number', instance.number);
  val['position'] = instance.position;
  writeNotNull('joindate', instance.joindate?.toIso8601String());
  writeNotNull('block', instance.block);
  val['updatedAt'] = instance.updatedAt.toIso8601String();
  val['createdAt'] = instance.createdAt.toIso8601String();
  return val;
}
