class Profile {
  final int id;
  final String email;
  final String name;
  final String profile_image_url;
  final String fcm_token;
  final String token;
  final DateTime created_at;

  Profile(
      {required this.id,
      required this.email,
      required this.name,
      required this.profile_image_url,
      required this.fcm_token,
      required this.token,
      required this.created_at});
}
