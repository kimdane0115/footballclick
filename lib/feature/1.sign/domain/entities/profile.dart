class Profile {
  final int id;
  final String email;
  final String name;
  final String profile_image_url;
  final String fcm_token;
  final String? access_token;
  final String? id_token;
  final DateTime created_at;

  Profile(
      {required this.id,
      required this.email,
      required this.name,
      required this.profile_image_url,
      required this.fcm_token,
      this.access_token,
      this.id_token,
      required this.created_at});
}
