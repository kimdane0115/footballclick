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
  String get team_name => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  int? get member_count => throw _privateConstructorUsedError;
  DateTime get updated_at => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;

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
      String team_name,
      String region,
      int? member_count,
      DateTime updated_at,
      DateTime created_at});
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
    Object? team_name = null,
    Object? region = null,
    Object? member_count = freezed,
    Object? updated_at = null,
    Object? created_at = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      team_name: null == team_name
          ? _value.team_name
          : team_name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      member_count: freezed == member_count
          ? _value.member_count
          : member_count // ignore: cast_nullable_to_non_nullable
              as int?,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
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
      String team_name,
      String region,
      int? member_count,
      DateTime updated_at,
      DateTime created_at});
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
    Object? team_name = null,
    Object? region = null,
    Object? member_count = freezed,
    Object? updated_at = null,
    Object? created_at = null,
  }) {
    return _then(_$SbTeamModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      team_name: null == team_name
          ? _value.team_name
          : team_name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      member_count: freezed == member_count
          ? _value.member_count
          : member_count // ignore: cast_nullable_to_non_nullable
              as int?,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$SbTeamModelImpl implements _SbTeamModel {
  _$SbTeamModelImpl(
      {required this.id,
      required this.team_name,
      required this.region,
      this.member_count,
      required this.updated_at,
      required this.created_at});

  factory _$SbTeamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SbTeamModelImplFromJson(json);

  @override
  final int id;
  @override
  final String team_name;
  @override
  final String region;
  @override
  final int? member_count;
  @override
  final DateTime updated_at;
  @override
  final DateTime created_at;

  @override
  String toString() {
    return 'SbTeamModel(id: $id, team_name: $team_name, region: $region, member_count: $member_count, updated_at: $updated_at, created_at: $created_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SbTeamModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.team_name, team_name) ||
                other.team_name == team_name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.member_count, member_count) ||
                other.member_count == member_count) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, team_name, region, member_count, updated_at, created_at);

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
      required final String team_name,
      required final String region,
      final int? member_count,
      required final DateTime updated_at,
      required final DateTime created_at}) = _$SbTeamModelImpl;

  factory _SbTeamModel.fromJson(Map<String, dynamic> json) =
      _$SbTeamModelImpl.fromJson;

  @override
  int get id;
  @override
  String get team_name;
  @override
  String get region;
  @override
  int? get member_count;
  @override
  DateTime get updated_at;
  @override
  DateTime get created_at;
  @override
  @JsonKey(ignore: true)
  _$$SbTeamModelImplCopyWith<_$SbTeamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
