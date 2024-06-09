// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sb_team_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SbTeamModel _$SbTeamModelFromJson(Map<String, dynamic> json) {
  return _SbTeamModel.fromJson(json);
}

/// @nodoc
mixin _$SbTeamModel {
  int get id => throw _privateConstructorUsedError;
  String get teamName => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  int? get memberCount => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SbTeamModelCopyWith<SbTeamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SbTeamModelCopyWith<$Res> {
  factory $SbTeamModelCopyWith(
          SbTeamModel value, $Res Function(SbTeamModel) then) =
      _$SbTeamModelCopyWithImpl<$Res, SbTeamModel>;
  @useResult
  $Res call(
      {int id,
      String teamName,
      String region,
      int? memberCount,
      DateTime updatedAt,
      DateTime createdAt});
}

/// @nodoc
class _$SbTeamModelCopyWithImpl<$Res, $Val extends SbTeamModel>
    implements $SbTeamModelCopyWith<$Res> {
  _$SbTeamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? teamName = null,
    Object? region = null,
    Object? memberCount = freezed,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      memberCount: freezed == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SbTeamModelImplCopyWith<$Res>
    implements $SbTeamModelCopyWith<$Res> {
  factory _$$SbTeamModelImplCopyWith(
          _$SbTeamModelImpl value, $Res Function(_$SbTeamModelImpl) then) =
      __$$SbTeamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String teamName,
      String region,
      int? memberCount,
      DateTime updatedAt,
      DateTime createdAt});
}

/// @nodoc
class __$$SbTeamModelImplCopyWithImpl<$Res>
    extends _$SbTeamModelCopyWithImpl<$Res, _$SbTeamModelImpl>
    implements _$$SbTeamModelImplCopyWith<$Res> {
  __$$SbTeamModelImplCopyWithImpl(
      _$SbTeamModelImpl _value, $Res Function(_$SbTeamModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? teamName = null,
    Object? region = null,
    Object? memberCount = freezed,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$SbTeamModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      memberCount: freezed == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$SbTeamModelImpl implements _SbTeamModel {
  _$SbTeamModelImpl(
      {required this.id,
      required this.teamName,
      required this.region,
      this.memberCount,
      required this.updatedAt,
      required this.createdAt});

  factory _$SbTeamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SbTeamModelImplFromJson(json);

  @override
  final int id;
  @override
  final String teamName;
  @override
  final String region;
  @override
  final int? memberCount;
  @override
  final DateTime updatedAt;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'SbTeamModel(id: $id, teamName: $teamName, region: $region, memberCount: $memberCount, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SbTeamModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, teamName, region, memberCount, updatedAt, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SbTeamModelImplCopyWith<_$SbTeamModelImpl> get copyWith =>
      __$$SbTeamModelImplCopyWithImpl<_$SbTeamModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SbTeamModelImplToJson(
      this,
    );
  }
}

abstract class _SbTeamModel implements SbTeamModel {
  factory _SbTeamModel(
      {required final int id,
      required final String teamName,
      required final String region,
      final int? memberCount,
      required final DateTime updatedAt,
      required final DateTime createdAt}) = _$SbTeamModelImpl;

  factory _SbTeamModel.fromJson(Map<String, dynamic> json) =
      _$SbTeamModelImpl.fromJson;

  @override
  int get id;
  @override
  String get teamName;
  @override
  String get region;
  @override
  int? get memberCount;
  @override
  DateTime get updatedAt;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$SbTeamModelImplCopyWith<_$SbTeamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
