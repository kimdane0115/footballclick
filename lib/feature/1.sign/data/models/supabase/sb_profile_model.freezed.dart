// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sb_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SbProfileModel _$SbProfileModelFromJson(Map<String, dynamic> json) {
  return _SbProfileModel.fromJson(json);
}

/// @nodoc
mixin _$SbProfileModel {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get profile_image_url => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get fcm_token => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;
  DateTime get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SbProfileModelCopyWith<SbProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SbProfileModelCopyWith<$Res> {
  factory $SbProfileModelCopyWith(
          SbProfileModel value, $Res Function(SbProfileModel) then) =
      _$SbProfileModelCopyWithImpl<$Res, SbProfileModel>;
  @useResult
  $Res call(
      {int id,
      String email,
      String name,
      String profile_image_url,
      String token,
      String fcm_token,
      DateTime created_at,
      DateTime updated_at});
}

/// @nodoc
class _$SbProfileModelCopyWithImpl<$Res, $Val extends SbProfileModel>
    implements $SbProfileModelCopyWith<$Res> {
  _$SbProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? profile_image_url = null,
    Object? token = null,
    Object? fcm_token = null,
    Object? created_at = null,
    Object? updated_at = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profile_image_url: null == profile_image_url
          ? _value.profile_image_url
          : profile_image_url // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      fcm_token: null == fcm_token
          ? _value.fcm_token
          : fcm_token // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SbProfileModelImplCopyWith<$Res>
    implements $SbProfileModelCopyWith<$Res> {
  factory _$$SbProfileModelImplCopyWith(_$SbProfileModelImpl value,
          $Res Function(_$SbProfileModelImpl) then) =
      __$$SbProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String email,
      String name,
      String profile_image_url,
      String token,
      String fcm_token,
      DateTime created_at,
      DateTime updated_at});
}

/// @nodoc
class __$$SbProfileModelImplCopyWithImpl<$Res>
    extends _$SbProfileModelCopyWithImpl<$Res, _$SbProfileModelImpl>
    implements _$$SbProfileModelImplCopyWith<$Res> {
  __$$SbProfileModelImplCopyWithImpl(
      _$SbProfileModelImpl _value, $Res Function(_$SbProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? profile_image_url = null,
    Object? token = null,
    Object? fcm_token = null,
    Object? created_at = null,
    Object? updated_at = null,
  }) {
    return _then(_$SbProfileModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profile_image_url: null == profile_image_url
          ? _value.profile_image_url
          : profile_image_url // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      fcm_token: null == fcm_token
          ? _value.fcm_token
          : fcm_token // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SbProfileModelImpl implements _SbProfileModel {
  _$SbProfileModelImpl(
      {required this.id,
      required this.email,
      required this.name,
      required this.profile_image_url,
      required this.token,
      required this.fcm_token,
      required this.created_at,
      required this.updated_at});

  factory _$SbProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SbProfileModelImplFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final String name;
  @override
  final String profile_image_url;
  @override
  final String token;
  @override
  final String fcm_token;
  @override
  final DateTime created_at;
  @override
  final DateTime updated_at;

  @override
  String toString() {
    return 'SbProfileModel(id: $id, email: $email, name: $name, profile_image_url: $profile_image_url, token: $token, fcm_token: $fcm_token, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SbProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profile_image_url, profile_image_url) ||
                other.profile_image_url == profile_image_url) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.fcm_token, fcm_token) ||
                other.fcm_token == fcm_token) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, name,
      profile_image_url, token, fcm_token, created_at, updated_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SbProfileModelImplCopyWith<_$SbProfileModelImpl> get copyWith =>
      __$$SbProfileModelImplCopyWithImpl<_$SbProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SbProfileModelImplToJson(
      this,
    );
  }
}

abstract class _SbProfileModel implements SbProfileModel {
  factory _SbProfileModel(
      {required final int id,
      required final String email,
      required final String name,
      required final String profile_image_url,
      required final String token,
      required final String fcm_token,
      required final DateTime created_at,
      required final DateTime updated_at}) = _$SbProfileModelImpl;

  factory _SbProfileModel.fromJson(Map<String, dynamic> json) =
      _$SbProfileModelImpl.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  String get name;
  @override
  String get profile_image_url;
  @override
  String get token;
  @override
  String get fcm_token;
  @override
  DateTime get created_at;
  @override
  DateTime get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$SbProfileModelImplCopyWith<_$SbProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
