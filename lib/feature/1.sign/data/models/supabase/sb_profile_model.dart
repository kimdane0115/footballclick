import 'package:freezed_annotation/freezed_annotation.dart';

part 'sb_profile_model.freezed.dart';
part 'sb_profile_model.g.dart';

@freezed
class SbProfileModel with _$SbProfileModel {

  factory SbProfileModel({
    required int id,
    required String email,
    required String name,
    required String profile_image_url,
    required String token,
    required String fcm_token,
    required DateTime created_at,
    required DateTime updated_at,
  }) = _SbProfileModel;

  factory SbProfileModel.fromJson(Map<String, dynamic> json) => _$SbProfileModelFromJson(json);
}