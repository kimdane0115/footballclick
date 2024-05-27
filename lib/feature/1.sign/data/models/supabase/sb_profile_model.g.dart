// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sb_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SbProfileModelImpl _$$SbProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$SbProfileModelImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      name: json['name'] as String,
      profile_image_url: json['profile_image_url'] as String,
      token: json['token'] as String,
      fcm_token: json['fcm_token'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$SbProfileModelImplToJson(
        _$SbProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'profile_image_url': instance.profile_image_url,
      'token': instance.token,
      'fcm_token': instance.fcm_token,
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
    };
