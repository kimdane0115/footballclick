// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sb_member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SbMemberModelImpl _$$SbMemberModelImplFromJson(Map<String, dynamic> json) =>
    _$SbMemberModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      fcmToken: json['fcmToken'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$SbMemberModelImplToJson(_$SbMemberModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fcmToken': instance.fcmToken,
      'profileImageUrl': instance.profileImageUrl,
      'createdAt': instance.createdAt.toIso8601String(),
    };
