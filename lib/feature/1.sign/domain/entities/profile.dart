class Profile {
  final int id;
  final String email;
  final String name;
  final String profile_image_url;
  final String fcm_token;
  final String? access_token;
  final String? id_token;
  final DateTime created_at;
  Profile({
    required this.id,
    required this.email,
    required this.name,
    required this.profile_image_url,
    required this.fcm_token,
    this.access_token,
    this.id_token,
    required this.created_at,
  });

  Profile copyWith({
    int? id,
    String? email,
    String? name,
    String? profile_image_url,
    String? fcm_token,
    String? access_token,
    String? id_token,
    DateTime? created_at,
  }) {
    return Profile(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      profile_image_url: profile_image_url ?? this.profile_image_url,
      fcm_token: fcm_token ?? this.fcm_token,
      access_token: access_token ?? this.access_token,
      id_token: id_token ?? this.id_token,
      created_at: created_at ?? this.created_at,
    );
  }
}
